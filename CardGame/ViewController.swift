//
//  ViewController.swift
//  CardGame
//
//  Created by Thiago Rodrigues Padovani on 26/04/2020.
//  Copyright © 2020 Thiago Rodrigues Padovani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    var leftScore = 0
    var rightScore = 0
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize the number for the cards
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")

        // Compare the random numbers
        if leftNumber > rightNumber {
            // player wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            // cpu wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // tie
        }
    }
    

}

