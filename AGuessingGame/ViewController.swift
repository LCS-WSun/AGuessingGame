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
    @IBOutlet weak var submittedGuess: UITextField!
    // MARK: Properties
    let targetNumber = Int.random(in:1...100)
    // MARK: Initializers        // Do any additional setup after loading the view.
    
    
    // MARK: Methods (functions)- behaviours
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        speak(message: "I'm thinking of a number between 1 and 100. Guess what it is")
        print ("I'm thiking of a number between 1 and 100. Guess what it is")
    }
    

    
    
    //will be used to check the guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //Obtain the guess value from the text field
        guard let  guessText = submittedGuess.text , guessText != "" else {
             speak(message: "Mind entering a value good ole chap?")
            return
            
            
            
        }
        
        // Try to convert the string into an integer data type
        guard let guessNumber = Int (guessText) else {
            speak(message: "I can't read this text, please enter it as a number and thankyou")
            return
        
        }
    
        
        
        //For testing purposes. What is the guess
        print("for testing purposes the guess is \(guessNumber)")
        
        
        
        //Give appropriate feedback to the user
        if guessNumber > targetNumber {
            print("guess lower next time")
            
            speak(message: "guess lower next time")
            
            
            
        } else if guessNumber < targetNumber{
            print("guess higher next time")
            
            speak(message: "guess higher next time")
            
            
        } else {
            print("You are correct!")
            
            speak(message: "You are correct!")
            

            
        }
    }
    
    
    // A function that will speak whatever message is provided
    func speak(message: String) {
        
        // Make an object named "synthesizer" , which is an instance of the
        let synthesizer = AVSpeechSynthesizer()
        
        
        
        //Make an object named 'utterence' , which is an instance of the class
        // Avspeechutterence
        var utterence = AVSpeechUtterance (string: message)
        
        
        //Speak the Message
        synthesizer.speak (utterence)
        
    
        
        
        
        
    }
    
}
