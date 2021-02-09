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
        Question(text: "A star can turn into a planet", answer: "True"),
        Question(text: "The gravity can form waves", answer: "True"),
        Question(text: "The sound travel faster in space", answer: "False"),
        Question(text: "The color of the sun is white", answer: "True"),
        Question(text: "The space empty is empty", answer: "False"),
        Question(text: "The space is always cold", answer: "False"),
        Question(text: "There is no center to the universe", answer: "True")
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
