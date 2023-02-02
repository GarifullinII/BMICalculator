//
//  ViewController.swift
//  BMICalculator
//
//  Created by Ildar Garifullin on 02/02/2023.
//

import UIKit

class ViewController: UIViewController {

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
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
}

