//
//  ViewController.swift
//  BMICalculator
//
//  Created by Ildar Garifullin on 02/02/2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    //MARK: - IBOutlet
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightOutletSlider: UISlider!
    @IBOutlet weak var weightOutletSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - IBAction
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightOutletSlider.value
        let weight = weightOutletSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        // go to ResultViewController
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // start go to ResultViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

