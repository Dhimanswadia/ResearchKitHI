//
//  Spatial.swift
//  Chelsea
//
//  Created by Dhiman on 11/15/15.
//  Copyright © 2015 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit
import ResearchKit
public var MicrophoneTask2: ORKOrderedTask {
    return ORKOrderedTask.spatialSpanMemoryTaskWithIdentifier("Spatial", intendedUseDescription: "We will test your spatial Memory", initialSpan: 3, minimumSpan: 2, maximumSpan: 5, playSpeed: 3, maxTests: 1, maxConsecutiveFailures: 2, customTargetImage: nil, customTargetPluralName: "Flower", requireReversal: true, options: ORKPredefinedTaskOption.ExcludeInstructions)
}
