//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Fatih on 2021-02-15.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


struct QuizBrain {
    
    let quiz = [
        Question(q: "T/F Windows Phone does have a desktop screen.", a: "False"),
        Question(q: "T/F iTunes is an online service available for iOS devices that allows synchronizing calendar, mail, and contact settings to all configured devices..", a: "False"),
        Question(q: "A Quick Response code contains a web link that can be used with a mobile device camera..", a: "True"),
        Question(q: "Sideloading is when you purchase apps through Google Play on your mobile device..", a: "False"),
        Question(q: "Pairing of a Bluetooth device with a mobile device requires a PIN to be entered on most occasions..", a: "True"),
        Question(q: "The default setting for iCloud is OFF..", a: "True"),
        Question(q: "Xcode is an interactive environment that can be used to learn, test, and evaluate Swift code..", a: "True"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "the operands (numbers) are on both sides of the operator (symbol) true of false'.", a: "True"),
        Question(q: "you can make something a double by creating 10.0 or 12.0 but during divinsion you can also complete Double(area) / number ***.", a: "True"),
        Question(q: "know where to put the uniary operator for example if you put it in the front ++levelScore; you will add one to the totalScore.", a: "True"),
        Question(q: "An array is an ordered list of values?.", a: "True")
    ]
    
    var questionNumber = 0
    
    func checkAnswer (_ userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            return true
        }else{
            return false
        }
        
    }
    
    func getQuestionText() -> String {
        return quiz [questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
           
            
        }else {
            
            questionNumber = 0
        }
    }
}
 
