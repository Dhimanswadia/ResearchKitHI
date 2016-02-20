//
//  WalkFile.swift
//  ResearchKit1
//
//  Created by Dhiman on 2/20/16.
//  Copyright © 2016 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit

public var WalkTask: ORKOrderedTask {
    return ORKOrderedTask.fitnessCheckTaskWithIdentifier("WalkTask",
        intendedUseDescription: nil,
        walkDuration: 15 as NSTimeInterval,
        restDuration: 15 as NSTimeInterval,
        options: .None)
}