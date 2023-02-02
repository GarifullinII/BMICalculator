//
//  ViewController.swift
//  BMICalculator
//
//  Created by Ildar Garifullin on 02/02/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = "\(String(sender.value)) m"
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(String(Int(sender.value))) Kg"
    }
}

