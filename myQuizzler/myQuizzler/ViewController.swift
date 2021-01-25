//
//  ViewController.swift
//  myQuizzler
//
//  Created by Anna Danilova on 25.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressiveBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + two = six", "True"],
    ["five + three = eight", "True"],
    ["one + six = nine", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

