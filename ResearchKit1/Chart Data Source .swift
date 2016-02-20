//
//  Chart Data Source .swift
//  ResearchKit1
//
//  Created by Dhiman on 2/20/16.
//  Copyright © 2016 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit


let Wage1 = CGFloat(WageConversion)


class PieChartDataSource: NSObject, ORKPieChartViewDataSource {
   // let Wage1 = CGFloat(WageConversion)
    
 

    
    let colors = [
        UIColor(red: 217/225, green: 217/255, blue: 217/225, alpha: 1),
        UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1),
        UIColor(red: 244/255, green: 190/255, blue: 74/255, alpha: 1)
    ]
    let values = [10.0, 25.0, 45.0]
    
    func numberOfSegmentsInPieChartView(pieChartView: ORKPieChartView ) -> Int {
        return colors.count
    }
    
    func pieChartView(pieChartView: ORKPieChartView, valueForSegmentAtIndex index: Int) -> CGFloat {
        return CGFloat(values[index])
    }
    
    func pieChartView(pieChartView: ORKPieChartView, colorForSegmentAtIndex index: Int) -> UIColor {
        return colors[index]
    }
    
    func pieChartView(pieChartView: ORKPieChartView, titleForSegmentAtIndex index: Int) -> String {
        return "Title \(index + 1)"
    }
}

class LineGraphDataSource: NSObject, ORKGraphChartViewDataSource {
    
    var plotPoints =
    [
        [
            ORKRangedPoint(value: 10),
            ORKRangedPoint(value: 20),
            ORKRangedPoint(value: Wage1),
            ORKRangedPoint(),
            ORKRangedPoint(value: Wage1),
            ORKRangedPoint(value: 40),
        ],
        [
            ORKRangedPoint(value: Wage1),
            ORKRangedPoint(value: Wage1),
            ORKRangedPoint(value: Wage1),
            ORKRangedPoint(value: 30),
            ORKRangedPoint(value: 40),
            ORKRangedPoint(value: 70),
        ]
    ]
    
    func numberOfPlotsInGraphChartView(graphChartView: ORKGraphChartView) -> Int {
        return plotPoints.count
    }
    
    func graphChartView(graphChartView: ORKGraphChartView, pointForPointIndex pointIndex: Int, plotIndex: Int) -> ORKRangedPoint {
        return plotPoints[plotIndex][pointIndex]
    }
    
    func graphChartView(graphChartView: ORKGraphChartView, numberOfPointsForPlotIndex plotIndex: Int) -> Int {
        return plotPoints[plotIndex].count
    }
    
    func maximumValueForGraphChartView(graphChartView: ORKGraphChartView) -> CGFloat {
        return 70
    }
    
    func minimumValueForGraphChartView(graphChartView: ORKGraphChartView) -> CGFloat {
        return 0
    }
    
    func graphChartView(graphChartView: ORKGraphChartView, titleForXAxisAtPointIndex pointIndex: Int) -> String? {
        return "\(pointIndex + 1)"
    }
}

class DiscreteGraphDataSource: NSObject, ORKGraphChartViewDataSource {
    
    var plotPoints =
    [
        [
            ORKRangedPoint(minimumValue: Wage1, maximumValue: Wage1),
            ORKRangedPoint(minimumValue: 1, maximumValue: 4),
            ORKRangedPoint(minimumValue: 2, maximumValue: 6),
            ORKRangedPoint(minimumValue: 3, maximumValue: 8),
            ORKRangedPoint(minimumValue: 5, maximumValue: 10),
            ORKRangedPoint(minimumValue: 8, maximumValue: 13),
        ],
        [
            ORKRangedPoint(value: 1),
            ORKRangedPoint(minimumValue: 2, maximumValue: 6),
            ORKRangedPoint(minimumValue: 3, maximumValue: 10),
            ORKRangedPoint(minimumValue: 5, maximumValue: 11),
            ORKRangedPoint(minimumValue: 7, maximumValue: 13),
            ORKRangedPoint(minimumValue: 10, maximumValue: 13),
        ]
    ]
    
    func numberOfPlotsInGraphChartView(graphChartView: ORKGraphChartView) -> Int {
        return plotPoints.count
    }
    
    func graphChartView(graphChartView: ORKGraphChartView, pointForPointIndex pointIndex: Int, plotIndex: Int) -> ORKRangedPoint {
        return plotPoints[plotIndex][pointIndex]
    }
    
    func graphChartView(graphChartView: ORKGraphChartView, numberOfPointsForPlotIndex plotIndex: Int) -> Int {
        return plotPoints[plotIndex].count
    }
    
    func graphChartView(graphChartView: ORKGraphChartView, titleForXAxisAtPointIndex pointIndex: Int) -> String? {
        return "\(pointIndex + 1)"
    }
    
}



