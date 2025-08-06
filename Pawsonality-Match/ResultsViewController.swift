//
//  ResultsViewController.swift
//  Pawsonality-Match
//
//  Created by alyssa tu on 8/5/25.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var userAnswers: [String] = []
    
    @IBOutlet weak var resultsLabel: UILabel!    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if userAnswers.isEmpty {
            resultsLabel.text = "No answers recorded."
        } else {
            resultsLabel.text = "Your Answers:\n" + userAnswers.joined(separator: "\n")
        }
    }
}
