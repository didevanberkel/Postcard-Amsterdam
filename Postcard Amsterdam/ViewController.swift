//
//  ViewController.swift
//  Postcard Amsterdam
//
//  Created by Dide van Berkel on 29-12-14.
//  Copyright (c) 2014 MokumGames. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabelName: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sentButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        messageLabelName.hidden = false
        messageLabelName.text = enterNameTextField.text
        messageLabelName.textColor = UIColor.blueColor()
        
    
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sentButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}
//1.45.27 daar ben ik!