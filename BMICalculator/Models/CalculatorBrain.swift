//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Ildar Garifullin on 04/02/2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiToDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        var advice = ""
        var color: UIColor
        
        switch bmiValue {
        case ..<18.5:
            advice = "Underweight"
            color = .yellow
        case 18.5...24.9:
            advice = "Normal"
            color = .green
        default:
            advice = "Overweight"
            color = .red
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
