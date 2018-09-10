//
//  ViewController.swift
//  zestRnIntegratedSwift
//
//  Created by ZestHo on 10/09/2018.
//  Copyright © 2018 ZestHo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    var diceArray : Array = ["dcie1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var firstIndex : Int = 0
    var secondIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollPressed(_ sender: Any) {
        updateDice()
    }
    func updateDice() {
        firstIndex = Int(arc4random_uniform(6))
        secondIndex = Int(arc4random_uniform(6))
        
        dice1.image = UIImage(named: diceArray[firstIndex])
        dice2.image = UIImage(named: diceArray[secondIndex])
    }
    
}

