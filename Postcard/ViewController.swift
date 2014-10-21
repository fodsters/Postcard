//
//  ViewController.swift
//  Postcard
//
//  Created by Neuro Apple Store on 2014-10-15.
//  Copyright (c) 2014 NeuroDesign. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Unhide labels
        messageLabel.hidden = false;
        nameLabel.hidden = false;
        
        // Mod labels text
        messageLabel.text = enterMessageTextField.text;
        nameLabel.text = enterNameTextField.text;
        
        // Clear textfields
        enterMessageTextField.text = "";
        enterNameTextField.text = "";
        
        // Change labels colors
        messageLabel.textColor = UIColor.redColor();
        nameLabel.textColor = UIColor.blueColor();
        
        
        sendMailButton.setTitle("Mail Sent!", forState: UIControlState.Normal);
        
        enterMessageTextField.resignFirstResponder();
    }

}

