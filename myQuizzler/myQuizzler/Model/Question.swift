//
//  Question.swift
//  myQuizzler
//
//  Created by Anna Danilova on 25.01.2021.
//

import Foundation

struct Question {
    let text: String
    var answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
