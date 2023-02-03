//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Ildar Garifullin on 03/02/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    //MARK: - IBOutlet
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
    }
    
    //MARK: - IBAction
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
