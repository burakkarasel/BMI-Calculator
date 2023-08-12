//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Burak Karasel on 12.08.2023.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValueLabel.text = bmiValue
        view.backgroundColor = color
        adviceLabel.text = advice
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
