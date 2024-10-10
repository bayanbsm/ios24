//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LHDice: UIImageView!
    @IBOutlet weak var RHDice: UIImageView!
    var diceList: [UIImage] = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButton(_ sender: UIButton) {
        let lhsIndex = Int.random(in: 0...5)
        let rhsIndex = Int.random(in: 0...5)
        LHDice.image = diceList[lhsIndex]
        RHDice.image = diceList[rhsIndex]

    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let lhsIndex = Int.random(in: 0...5)
            let rhsIndex = Int.random(in: 0...5)
            LHDice.image = diceList[lhsIndex]
            RHDice.image = diceList[rhsIndex]

        }
    }
}

