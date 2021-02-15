//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
       
        
        if userAnswer == actualAnswer as? String {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
           
            
        }else {
            
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:#selector(updateUI), userInfo: nil ,repeats: false)
    
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        
    }
    
}

