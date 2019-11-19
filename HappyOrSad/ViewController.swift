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
        
        guard let StringTextField = TextField.text else {
            ErrorMessage.text = ("Please enter your text.")
            return
        }
        
        for scalar in StringTextField.unicodeScalars {
            print(scalar.value)
        }
        
        switch StringTextField {
        case <#pattern#>:
            <#code#>
        default:
            AnswerBox.text = ("I'm not sure")
        }
    
    }
    
}

