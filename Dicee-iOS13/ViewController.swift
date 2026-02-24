//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Amresh Tripathi on 13/02/2026
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDiceNumber = Int.random(in: 0...5)
    var rightDiceNumber = Int.random(in: 0...5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        // Do any additional setup after loading the view.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //diceImageViewOne.image = //UIImage(imageLiteralResourceName: "DiceFour")
        //diceImageViewTwo.image = //UIImage(imageLiteralResourceName: "DiceFour")
        
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        diceImageViewOne.image = [UIImage(imageLiteralResourceName: "DiceOne"),
         UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),
         UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),
                                  UIImage(imageLiteralResourceName: "DiceSix")][leftDiceNumber]
        
        diceImageViewTwo.image = [UIImage(imageLiteralResourceName: "DiceOne"),
         UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),
         UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),
                                  UIImage(imageLiteralResourceName: "DiceSix")][rightDiceNumber]
        
        
        
    }
}

