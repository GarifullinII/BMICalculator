//
//  SecondViewController.swift
//  BMICalculator
//
//  Created by Ildar Garifullin on 03/02/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiVC = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
      
        let label = UILabel()
        label.text = bmiVC
        label.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        
        view.addSubview(label)
    }
}
