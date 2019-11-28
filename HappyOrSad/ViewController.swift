//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Kim, Jenis on 2019-11-18.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var AnswerBox: UILabel!
    @IBOutlet weak var ErrorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Analyze the text provided
        
    }
    
    @IBAction func AnalyzeText(_ sender: Any) {
        
        // Clear out the output label from the last time the Analyze button was pressed
        AnswerBox.text = ""
        
        // Make sure the user puts in an input
        guard let TextFieldInput = TextField.text, TextFieldInput.count > 0, TextFieldInput.count < 255 else {
            ErrorMessage.text = ("Please enter a phrase that is 255 or less characters ")
            return
        }
        
        // Count how many characters are happy or sad in the text
        
        var happyCounter = 0
        
        var sadCounter = 0
        
        for scalar in TextFieldInput.unicodeScalars {
            let scalar = (scalar.value)
            
            switch scalar {
            case 128512:
                happyCounter += 1
            case 128515:
                happyCounter += 1
            case 128516:
                happyCounter += 1
            case 128513:
                happyCounter += 1
            case 128518:
                happyCounter += 1
            case 128542:
                sadCounter += 1
            case 9785:
                sadCounter += 1
            case 65039:
                sadCounter += 1
            case 128577:
                sadCounter += 1
            case 128557:
                sadCounter += 1
            case 128547:
                sadCounter += 1
            default:
                break
            }
    
            
        }
        
        // Compare the counts and see the overall mood of the message
        if happyCounter > sadCounter {
            AnswerBox.text = ("Happy")
        } else if sadCounter == happyCounter {
            AnswerBox.text = ("unsure")
        } else {
            AnswerBox.text = ("unsure")
        }
    }

}

