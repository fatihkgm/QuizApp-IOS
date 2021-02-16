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
    
    var  quizBrain = QuizBrain()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let userRight = quizBrain.checkAnswer(userAnswer)
       
        
        if userRight {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:#selector(updateUI), userInfo: nil ,repeats: false)
    
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQestionText()
        progressBar.progress = quizBrain.getProgress()
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        
    }
    
}

