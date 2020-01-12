//
//  ViewController.swift
//  Dicee
//
//  Created by 🧔🏻Alikhan Batchaev on 11.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var diceImageViewOne: UIImageView!
    @IBOutlet var diceImageViewTwo: UIImageView!
    
    let dice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        diceImageViewOne.alpha = 0.5
        diceImageViewTwo.alpha = 0.5
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageViewOne.alpha = 1
        diceImageViewTwo.alpha = 1
        
        diceImageViewOne.image = dice [Int.random(in: 0...5)]
        diceImageViewTwo.image =  dice [Int.random(in: 0...5)]
        
    }
    
}

