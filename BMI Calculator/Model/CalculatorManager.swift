//
//  CalculatorManager.swift
//  BMI Calculator
//
//  Created by Burak Karasel on 12.08.2023.
//

import Foundation
import UIKit

struct CalculatorManager {
    
    var bmi : BMIResult?
    
    mutating func calculateBMI(weight : Float, height : Float) {
        let tempBMI = weight / pow(height, 2)
        switch tempBMI {
        case 0..<18.5:
            self.bmi = BMIResult(value: tempBMI, advice: "More snacks!", color: .blue)
        case 18.5...24.9:
            self.bmi = BMIResult(value: tempBMI, advice: "Perfect!", color: .green)
        default:
            self.bmi = BMIResult(value: tempBMI, advice: "Less snacks!", color: .magenta)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
