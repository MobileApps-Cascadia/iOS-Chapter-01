//
//  Copyright © 2015 Big Nerd Ranch
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
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
    //not accessing private variables, instead we call on the function itself
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz.question(number: currentQuestionIndex)
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == quiz.count {
            currentQuestionIndex = 0
        }
        
        let question: String = quiz.question(number: currentQuestionIndex)
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = quiz.answer(number: currentQuestionIndex)
        answerLabel.text = answer
    }

}
