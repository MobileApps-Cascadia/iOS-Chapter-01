//
//  Quiz.swift
//  Quiz
//
//  Created by Brian Bansenauer on 4/1/19.
//  modified from iOS Programming 6ed, Big Nerd Ranch
//

class Quiz{
 
private let questions: [String] = [
    "From what is cognac made?",
    "What is 7+7?",
    "What is the capital of Vermont?"
]
    
private let answers: [String] = [
    "Grapes",
    "14",
    "Montpelier"
]

    var count : Int {
        return questions.count
    }
    
    func question( number num:Int ) -> String {
        return questions[num]
    }
    
    func answer( number num:Int ) -> String {
        return answers[num]
    }
}
