//
//  Tap.swift
//  Chelsea
//
//  Created by Dhiman on 11/15/15.
//  Copyright © 2015 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit
public var MicrophoneTask1: ORKOrderedTask {
    return ORKOrderedTask.twoFingerTappingIntervalTaskWithIdentifier("Tap", intendedUseDescription: "Tapping", duration: 5, options: ORKPredefinedTaskOption.ExcludeConclusion)
}
