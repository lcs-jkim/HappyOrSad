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
            case 601:
                happyCounter = happyCounter + 1
                fallthrough
            case 602:
                happyCounter = happyCounter + 1
                fallthrough
            case 603:
                happyCounter = happyCounter + 1
                fallthrough
            case 604:
                happyCounter = happyCounter + 1
                fallthrough
            case 605:
                happyCounter = happyCounter + 1
                fallthrough
            case 606:
                happyCounter = happyCounter + 1
                fallthrough
            default:
                happyCounter = 0
            }
            
            switch scalar {
            case 622:
                sadCounter = sadCounter + 1
                fallthrough
            case 625:
                sadCounter = sadCounter + 1
                fallthrough
            case 628:
                sadCounter = sadCounter + 1
                fallthrough
            case 629:
                sadCounter = sadCounter + 1
                fallthrough
            case 630:
                sadCounter = sadCounter + 1
                fallthrough
            default:
                sadCounter = 0
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

