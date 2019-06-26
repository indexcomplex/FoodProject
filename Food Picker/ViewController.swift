//
//  ViewController.swift
//  Food Picker
//
//  Created by Alan Hernandez on 6/24/19.
//  Copyright © 2019 alan Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var todaysChoiceLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    
    let foodTypes: [String] = ["American","Mexican", "Italian", "Thai", "Chinese"]
    
    @IBAction func didTapChooseButton() {
        
        todaysChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        
        chooseButton.setTitle("Choose Again", for: UIControl.State.normal)
        
        // we're converting the foodTypes.count from int to unsigned int as we set it to a var
        let foodTypesCount = UInt32(foodTypes.count)
        let randomNumber = arc4random_uniform(foodTypesCount)
        let intRandomNumber = Int(randomNumber)
        let food = foodTypes[intRandomNumber]
        
        
        foodTypeLabel.text = food
        
    }
    
    
    
    

}

