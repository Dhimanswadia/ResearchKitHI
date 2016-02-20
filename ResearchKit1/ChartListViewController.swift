//
//  ChartTableViewCell.swift
//  ResearchKit1
//
//  Created by Dhiman on 2/20/16.
//  Copyright © 2016 Dhiman. All rights reserved.
//

import Foundation
import UIKit
import ResearchKit

class ChartListViewController: UITableViewController {
    @IBOutlet weak var tableView1: UITableView!
    
    let pieChartDataSource = PieChartDataSource()
    let lineGraphChartDataSource = LineGraphDataSource()
    let discreteGraphChartDataSource = DiscreteGraphDataSource()
    let pieChartIdentifier = "PieChartCell"
    let lineGraphChartIdentifier = "LineGraphChartCell"
    let discreteGraphChartIdentifier = "DiscreteGraphChartCell"
    
    var pieChartTableViewCell: PieChartTableViewCell!
    var lineGraphChartTableViewCell: LineGraphChartTableViewCell!
    var discreteGraphChartTableViewCell: DiscreteGraphChartTableViewCell!
    var chartTableViewCells: [UITableViewCell]!
    
    override func viewDidLoad() {
        // ORKPieChartView
        pieChartTableViewCell = tableView.dequeueReusableCellWithIdentifier(pieChartIdentifier) as! PieChartTableViewCell
        let pieChartView = pieChartTableViewCell.pieChartView
        pieChartView.dataSource = pieChartDataSource
        // Optional custom configuration
        pieChartView.title = "TITLE"
        pieChartView.text = "TEXT"
        pieChartView.lineWidth = 14
               
       
        
        // ORKLineGraphChartView
        lineGraphChartTableViewCell = tableView.dequeueReusableCellWithIdentifier(lineGraphChartIdentifier) as! LineGraphChartTableViewCell
        let lineGraphChartView = lineGraphChartTableViewCell.graphView as! ORKLineGraphChartView
        lineGraphChartView.dataSource = lineGraphChartDataSource
        lineGraphChartView.tintColor = UIColor(red: 244/255, green: 190/255, blue: 74/255, alpha: 1)
        // Optional custom configuration
        lineGraphChartView.showsHorizontalReferenceLines = true
        lineGraphChartView.showsVerticalReferenceLines = true
        
        // ORKDiscreteGraphChartView
        discreteGraphChartTableViewCell = tableView.dequeueReusableCellWithIdentifier(discreteGraphChartIdentifier) as! DiscreteGraphChartTableViewCell
        let discreteGraphChartView = discreteGraphChartTableViewCell.graphView as! ORKDiscreteGraphChartView
        discreteGraphChartView.dataSource = discreteGraphChartDataSource
        discreteGraphChartView.tintColor = UIColor(red: 244/255, green: 190/255, blue: 74/255, alpha: 1)
        // Optional custom configuration
        discreteGraphChartView.showsHorizontalReferenceLines = true
        discreteGraphChartView.showsVerticalReferenceLines = true
        
        chartTableViewCells = [pieChartTableViewCell, lineGraphChartTableViewCell, discreteGraphChartTableViewCell]
        
        tableView.tableFooterView = UIView(frame: CGRectZero)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chartTableViewCells.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = chartTableViewCells[indexPath.row];
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        pieChartTableViewCell.pieChartView.animateWithDuration(0.5)
        lineGraphChartTableViewCell.graphView.animateWithDuration(0.5)
        discreteGraphChartTableViewCell.graphView.animateWithDuration(0.5)
    }
}

