//
//  SurveyTask.swift
//  Resea
//
//  Created by Dhiman on 11/14/15.
//  Copyright © 2015 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit

public var SurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "Stress test "
    instructionStep.text = "You will answer few questions which  will  help researchers to understand the effects of prolong work hours for doctors."
    steps += [instructionStep]
    var nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
    var nameQuestionStepTitle = "What is your role?"
    var nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    steps += [nameQuestionStep]
    
     nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
     nameQuestionStepTitle = "What is your Location?"
     nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep1", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    steps += [nameQuestionStep]
    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}
