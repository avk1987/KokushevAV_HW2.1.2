//
//  ViewController.swift
//  KokushevAV_HW2.1.2
//
//  Created by Александр Кокушев on 25.02.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.setTitle("Start", for: .normal)
        redLight.layer.cornerRadius = yellowLight.bounds.width / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.width / 2
        greenLight.layer.cornerRadius = greenLight.bounds.width / 2
        
    }

    
    @IBAction func startBurronPressed() {
        
        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        } else {
            redLight.alpha = 1
            startButton.setTitle("Next", for: .normal)
        }
    }
    
}

