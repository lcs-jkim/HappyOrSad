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
    
    
    @IBAction func Analyze(_ sender: Any) {
        
        guard TextField.text != nil else {
            return
            }
    
    }
    
}

