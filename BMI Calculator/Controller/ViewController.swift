//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Burak Karasel on 10.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = sender.value
        heightLabel.text = String(format: "%.2fm", heightValue)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = Int(sender.value)
        weightLabel.text = "\(weightValue)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
}

