//
//  Created by Brian Bansenauer, modified from iOS Programming 6ed, Big Nerd Ranch

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    var currentQuestionIndex: Int = 0
    let quiz:Quiz = Quiz() //This creates a Quiz object model to provide the quiz data, questions and answers
    
    //TODO : Modify the functions below to use the quiz objects properties and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // questionLabel.text = questions[currentQuestionIndex] //The questions array has been moved to the quiz class
        // Arica: Modified this section to use the question array in the Quiz class.
        questionLabel.text = quiz.question(number: currentQuestionIndex)
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        // Arica: Modified this section to use the quiz count method in the Quiz class.
        if currentQuestionIndex == quiz.count { // questions.count //The quiz class has a computed property for the number of questions
            currentQuestionIndex = 0
        }
        
        // let question: String = questions[currentQuestionIndex]
        // Arica: Modified this section to use the question array in the Quiz class.
        let question: String = quiz.question(number: currentQuestionIndex)
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        // let answer: String = answers[currentQuestionIndex] //The answers array has been moved to the quiz class
        // Arica: Modified this section to use the answer array in the Quiz class.
        let answer: String = quiz.answer(number: currentQuestionIndex)
        answerLabel.text = answer
    }

}

