//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Sun, Wesley on 2019-10-02.
//  Copyright © 2019 Wesley Sun. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: Properties
    
    // MARK: Initializers        // Do any additional setup after loading the view.
    
    @IBOutlet weak var submittedGuess: UITextField!
    // MARK: Methods (functions)- behaviours
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Make an object named "synthesizer" , which is an instance of the
        let synthesizer = AVSpeechSynthesizer()
        
        
        //Make a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
        
        
        //Make an object named 'utterence' , which is an instance of the class
        // Avspeechutterence
        var utterence = AVSpeechUtterance (string: message)
        
        //Speak the Message
        synthesizer.speak (utterence)
        print("the number to guess is\(targetNumber)")
        
        
        
        
    }
    //will be used to check the guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //Obtain the guess value from the text field
        let guessText = submittedGuess
        
        
    }
    
}








