//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Ankit Yadav on 16/03/23.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiVal = weight/pow(height, 2)
        
        switch bmiVal {
        case ..<18.5:
            bmi = BMI(value: bmiVal, advice: "Eat More Please!", color: UIColor.blue)
        case 18.5..<24.9:
            bmi = BMI(value: bmiVal, advice: "Fit as Fiddle!", color: UIColor.green)
        default:
            bmi = BMI(value: bmiVal, advice: "Eat less pies!", color: UIColor.red)
        }
        
    }
    
    func getBMI() -> String {
        let bmiValToStr = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiValToStr
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
