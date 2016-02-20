//
//  ChartTableView.swift
//  ResearchKit1
//
//  Created by Dhiman on 2/20/16.
//  Copyright © 2016 Dhiman. All rights reserved.
//


import UIKit
import ResearchKit

class PieChartTableViewCell: UITableViewCell {
    @IBOutlet weak var pieChartView: ORKPieChartView!
}

class GraphChartTableViewCell: UITableViewCell {
    @IBOutlet weak var graphView: ORKGraphChartView!
}

class LineGraphChartTableViewCell: GraphChartTableViewCell { }

class DiscreteGraphChartTableViewCell: GraphChartTableViewCell { }
