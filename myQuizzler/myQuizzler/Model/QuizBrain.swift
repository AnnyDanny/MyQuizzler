//
//  QuizBrain.swift
//  myQuizzler
//
//  Created by Anna Danilova on 25.01.2021.
//

import Foundation

var questionNumber = 0
var score = 0

struct QuizBrain {
    let quiz = [
        Question(text: "Four + two = six", answer: "True"),
        Question(text: "five + three = eight", answer: "True"),
        Question(text: "one + six = nine", answer: "False"),
        Question(text: "one + six = nine", answer: "False"),
        Question(text: "one + six = nine", answer: "False"),
        Question(text: "one + six = nine", answer: "False"),
        Question(text: "one + six = nine", answer: "False")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func getScore() -> Int {
        return score
    }
}
