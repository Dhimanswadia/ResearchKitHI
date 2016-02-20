//
//  ViewController.swift
//  ResearchKit1
//
//  Created by Dhiman on 2/20/16.
//  Copyright © 2016 Dhiman. All rights reserved.
//
import UIKit
import ResearchKit


class ViewController: UIViewController {
    
    
    @IBAction func consentTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func surveyTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func balanceTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String, isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func TapTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask1, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String, isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func SpatialTapped(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: MicrophoneTask2, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String, isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    @IBAction func authorizeTapped(sender: AnyObject) {
        HealthKitManager.authorizeHealthKit()
    }
    
    @IBAction func walkTapped(sender: AnyObject) {
        let taskViewController = ORKTaskViewController(task: WalkTask, taskRunUUID: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath:
            NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0],
            isDirectory: true)
        presentViewController(taskViewController, animated: true, completion: nil)
        HealthKitManager.startMockHeartData()
    }
    
}
extension ViewController : ORKTaskViewControllerDelegate {
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        let taskResult = taskViewController.result
        HealthKitManager.stopMockHeartData()
        
        
        
        
        
        if (taskViewController.task?.identifier == "WalkTask"
            && reason == .Completed) {
                
                let heartURLs = ResultParser.findWalkHeartFiles(taskViewController.result)
                
                for url in heartURLs {
                    do {
                        let string = try NSString.init(contentsOfURL: url, encoding: NSUTF8StringEncoding)
                        print(string)
                    } catch {}
                }
        }
        if(taskViewController.task?.identifier == "Spatial" && reason == .Completed) {
            let spatialTapped = ResultParser.spatialTappedresults(taskViewController.result)
            for url in spatialTapped {
                do {
                    let string = try NSString.init(contentsOfURL: url, encoding: NSUTF8StringEncoding)
                    print(string)
                } catch {}
            }

            }
        if(taskViewController.task?.identifier == "Balance Task" && reason == .Completed) {
            let balanceTapped = ResultParser.Balanceresults(taskViewController.result)
            for url in balanceTapped {
                do {
                    let string = try NSString.init(contentsOfURL: url, encoding: NSUTF8StringEncoding)
                    print(string)
                } catch {}
            }
            
        }
     if(taskViewController.task?.identifier == "Tap" && reason == .Completed) {
     let tapTapped = ResultParser.tapTappedresults(taskViewController.result)
      for url in tapTapped {
     do {
    let string = try NSString.init(contentsOfURL: url, encoding: NSUTF8StringEncoding)
    print(string)
    } catch {}
    }
    
    }
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        let cell = sender as! UITableViewCell
//        let indexPath = ChartListViewController.indexPathForCell(cell)!
//        
//        let orkResults = ORKResult![indexPath.row]
//        
//        let movieDetailsViewController = segue.destinationViewController as! ChartListViewController
//        movieDetailsViewController.movie = orkResults
//        
//    }

}

