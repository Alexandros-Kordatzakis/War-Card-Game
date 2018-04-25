//
//  ViewController.swift
//  War Game
//
//  Created by ALMANKA on 07/07/2017.
//  Copyright © 2017 Alex Kord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var RightImageview: UIImageView!
    @IBOutlet weak var RightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var LeftScoreLabel: UILabel!
    var leftScore = 0
    
    
    let cardNames = ["card2", "card3", "card4", "card5","card6","card7","card8","card9", "card10", "jack", "queen", "king", "ace" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DealTapped(_ sender: AnyObject) {
        
        // Randomize left number from 0 to 12
        let leftNumber:Int = Int(arc4random_uniform(13))
        
        // Set the left image
        LeftImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Randomize right number from 0 to 12
        let rightNumber:Int = Int(arc4random_uniform(13))
        
        // Set the right image
        RightImageview.image = UIImage(named: cardNames[rightNumber])
        
        // Compare the card numbers
        if leftNumber > rightNumber {
            // Left Card wins
            
            // Increment the score
            leftScore += 1
            // Update the label
            LeftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            // It's a tie
        }
        else {
        // Right card wins
            
            // Increment the score
            rightScore += 1
            
            // Update the label
            RightScoreLabel.text = String(rightScore)
            
        }
            }
        
}
    
    




