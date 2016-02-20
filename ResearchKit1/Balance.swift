//
//  Balance.swift
//  Chelsea
//
//  Created by Dhiman on 11/14/15.
//  Copyright © 2015 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit

public var MicrophoneTask: ORKOrderedTask {
    return ORKOrderedTask.shortWalkTaskWithIdentifier("Balance Task", intendedUseDescription: "Take a short walk", numberOfStepsPerLeg: 10, restDuration: 5,options:ORKPredefinedTaskOption.ExcludeAudio )
}


