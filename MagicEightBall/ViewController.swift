//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Lauren Williams on 7/4/18.
//  Copyright © 2018 Lauren Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: - Properties
    
    let answers = ["Yes, Definetely", "Without a doubt", "Absolutely not!", "Most certainly", "Always!", "No", "Sorry try again"]
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
    
        generateAnswer()
    }
        
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
            guard motion == .motionShake else {return}
        }
    func generateAnswer() {
         //1
        let maxIndex = UInt32(answers.count)
        
        //2
    let randomIndex = Int(arc4random_uniform(maxIndex))
        
        //3
        answerLabel.text = answers[randomIndex]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}

