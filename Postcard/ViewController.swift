//
//  ViewController.swift
//  Postcard
//
//  Created by Sira Sasitorn on 11/1/14.
//  Copyright (c) 2014 Sira Sasitorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLable.hidden = false
        messageLable.text = enterMessageTextField.text
        
        messageLable.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

