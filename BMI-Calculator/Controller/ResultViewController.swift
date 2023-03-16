//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Ankit Yadav on 16/03/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
        view.backgroundColor = color

    }
    
    @IBAction func recalBmi(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
