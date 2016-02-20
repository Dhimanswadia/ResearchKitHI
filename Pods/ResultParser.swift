//
//  ResultParser.swift
//  Pods
//
//  Created by Dhiman on 2/20/16.
//
//

import Foundation
import ResearchKit

struct ResultParser {
    
    static func findWalkHeartFiles(result: ORKTaskResult) -> [NSURL] {
        
        var urls = [NSURL]()
        
        if let results = result.results
            where results.count > 4,
            let walkResult = results[3] as? ORKStepResult,
            let restResult = results[4] as? ORKStepResult {
                
                for result in walkResult.results! {
                    if let result = result as? ORKFileResult,
                        let fileUrl = result.fileURL {
                            urls.append(fileUrl)
                    }
                }
                
                for result in restResult.results! {
                    if let result = result as? ORKFileResult,
                        let fileUrl = result.fileURL {
                            urls.append(fileUrl)
                    }
                }
        }
        
        return urls
    }
    static func spatialTappedresults(result:ORKTaskResult) -> [NSURL] {
        var spTapped = [NSURL]()
        
       if let results = result.results
        where results.count >= 0,
            let spatialresult = results[0] as? ORKStepResult {
                
        
        
        for result in spatialresult.results! {
            if let result = result as? ORKFileResult,
                let fileUrl = result.fileURL {
                    spTapped.append(fileUrl)
                    
            }
            
            }
        }
    
    return spTapped
    }
    static func Balanceresults(result:ORKTaskResult) -> [NSURL] {
        var balanceTapped = [NSURL]()
        
        if let results = result.results
            where results.count > 2,
            let balanceresult = results[3] as? ORKStepResult,
            let gatreults = results[4] as? ORKStepResult,
            let walkaroudn = results[5] as? ORKStepResult {
                for result in balanceresult.results! {
                    if let result = result as? ORKFileResult,
                        let fileUrl = result.fileURL {
                            balanceTapped.append(fileUrl)
                            
                    }
                    
                }
                for result in gatreults.results! {
                    if let result = result as? ORKFileResult,
                        let fileUrl = result.fileURL {
                            balanceTapped.append(fileUrl)
                            
                    }

                    
                }
                for result in walkaroudn.results! {
                    if let result = result as? ORKFileResult,
                        let fileUrl = result.fileURL {
                            balanceTapped.append(fileUrl)
                            
                    }
                    }
}
    return balanceTapped
    }
    static func tapTappedresults(result:ORKTaskResult) -> [NSURL] {
        var TAPTapped = [NSURL]()
        
        if let results = result.results
            where results.count > 1,
            let tapresult = results[2] as? ORKStepResult {
                
                
                
                for result in tapresult.results! {
                    if let result = result as? ORKFileResult,
                        let fileUrl = result.fileURL {
                           TAPTapped.append(fileUrl)
                            
                    }
                    
                }
        }
        
        return TAPTapped
    }

    

}