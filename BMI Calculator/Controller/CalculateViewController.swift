//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Burak Karasel on 10.08.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorManager = CalculatorManager()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
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
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
        calculatorManager.calculateBMI(weight: weightValue, height: heightValue)
        
        // here we perform a navigation with our identifier
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            // here we are downcasting our destination to ResultViewController
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorManager.getBMIValue()
            destinationVC.advice = calculatorManager.getAdvice()
            destinationVC.color = calculatorManager.getColor()
        }
    }
}

