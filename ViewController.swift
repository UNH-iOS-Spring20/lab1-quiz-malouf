//
//  ViewController.swift
//  Lab1
//
//  Created by Brendon Malouf on 2/4/20.
//  Copyright © 2020 Brendon Malouf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    //@IBOutlet var questionLabel: UILabel!
    //@IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "Who won this past Super Bowl?",
        "What is 9*8?",
        "Who was the first President?"
    ]
    let answers: [String] = [
        "Chiefs",
        "72",
        "George Washington"
    ]
    var currentQuestionIndex: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }

    @IBAction func showAnswer(_ sender: Any) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

