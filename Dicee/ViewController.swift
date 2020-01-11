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
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        diceImageViewOne.alpha = 0.5
        diceImageViewTwo.alpha = 0.5
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageViewOne.alpha = 1
        diceImageViewTwo.alpha = 1
        
        diceImageViewOne.image =  [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] [leftDiceNumber]
        diceImageViewTwo.image =  [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] [rightDiceNumber]
        
        leftDiceNumber += 1
        rightDiceNumber -= 1
    }
    
}

