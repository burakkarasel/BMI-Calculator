//
//  BMIResult.swift
//  BMI Calculator
//
//  Created by Burak Karasel on 12.08.2023.
//

import Foundation
import UIKit

struct BMIResult {
    var value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice : String, color : UIColor) {
        self.advice = advice
        self.value = value
        self.color = color
    }
}
