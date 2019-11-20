//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Kim, Jenis on 2019-11-18.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// MARK PROPERTIES
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var AnswerBox: UILabel!
    @IBOutlet weak var ErrorMessage: UILabel!
    
    @IBAction func Analyze(_ sender: Any) {
        
        guard TextField == nil else {
            ErrorMessage.text = ("Please enter your text.")
            return
        }
        
        guard let StringTextField = TextField.text else {
            return
        }
        
        if StringTextField.count > 225 {
            ErrorMessage.text = ("Please enter a message no more than 255 characters")
            return
        }
        
        for scalar in StringTextField.unicodeScalars {
            let scalar = (scalar.value)
            
            var happyCounter = 0
            
            var sadCounter = 0
            
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
            
            if happyCounter > sadCounter {
                AnswerBox.text = ("Happy")
            } else if sadCounter == happyCounter {
                AnswerBox.text = ("unsure")
            } else {
                AnswerBox.text = ("unsure")
            }
            
        
          }
        
       }
    
    }

