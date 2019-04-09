//
//  Copyright © 2015 Big Nerd Ranch
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "From what is cognac made?",
        "What is 7+7?",
        "What is the capital of Vermont?"
    ]
    let answers: [String] = [
        "Grapes",
        "14",
        "Montpelier"
    ]
    
    var currentQuestionIndex: Int = 0
    let quiz:Quiz
    
    // Injecting a new Quiz object when the ViewController is created
    init(quiz:Quiz){
        self.quiz = quiz
        super.init(nibName: nil, bundle: nil)
    }
    // Since we override one init, we need to include this required one as well
    required init?(coder decoder: NSCoder) {
        self.quiz = Quiz()
        super.init(coder: decoder)
    }
    //TODO : Modify the functions below to use the quiz objects properties and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

}

