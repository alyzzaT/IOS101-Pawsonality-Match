//
//  ViewController.swift
//  Pawsonality-Match
//
//  Created by alyssa tu on 8/5/25.
//

import UIKit

struct Question {
    let text: String
    let answers: [String]
}

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var questionText: UITextView!
    
    
    @IBOutlet weak var answerButton1: UIButton!
    
    @IBOutlet weak var answerButton2: UIButton!
    
    @IBOutlet weak var answerButton3: UIButton!
    
    var questions: [Question] = [

        Question(text: "How do you behave in unfamiliar environments?",
                    answers: ["Alert", "Watchful", "Fearless"]),
        Question(text: "How do you react to sudden loud noises?",
                    answers: ["Nervous", "Brave", "Calm"]),
        Question(text: "How do you typically express your emotions?",
                     answers: ["Open", "Guarded", "Quiet"]),
        Question(text: "How well do you handle waiting or delays?",
                     answers: ["Patient", "Impulsive", "Stubborn"])
        
        ]
       
       var currentQuestionIndex = 0
       var selectedAnswers: [String] = []
       
       override func viewDidLoad() {
           super.viewDidLoad()
           updateUI()
       }
       
       func updateUI() {
           if currentQuestionIndex < questions.count {
               let currentQuestion = questions[currentQuestionIndex]
               questionText.text = currentQuestion.text
               
               answerButton1.setTitle(currentQuestion.answers[0], for: .normal)
               answerButton2.setTitle(currentQuestion.answers[1], for: .normal)
               answerButton3.setTitle(currentQuestion.answers[2], for: .normal)
               
               progressBar.progress = Float(currentQuestionIndex) / Float(questions.count)
           } else {
               performSegue(withIdentifier: "showResults", sender: nil)
           }
       }
       
       @IBAction func answerButtonTapped(_ sender: UIButton) {
           guard currentQuestionIndex < questions.count else { return }
           
           if let answer = sender.title(for: .normal) {
               selectedAnswers.append(answer)
           }
           
           currentQuestionIndex += 1
           updateUI()
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "showResults" {
               if let resultsVC = segue.destination as? ResultsViewController {
                   resultsVC.userAnswers = selectedAnswers
               }
           }
       }
   }
