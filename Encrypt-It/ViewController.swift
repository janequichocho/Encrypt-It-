//
//  ViewController.swift
//  Encrypt-it!
//
//  Created by Jane Quichocho on 6/8/17.
//  Copyright © 2017 Jane Quichocho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let defaults = UserDefaults.standard
    @IBOutlet weak var welcomeUser: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var question: UILabel!
    @IBOutlet var submit: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (defaults.string(forKey: "username") != nil) {
            performSegue(withIdentifier: "start", sender: self)
        }
    }
    
    // Switches screen when user enters their name
    @IBAction func submitName(_ sender: Any) {
        if (username.text == "") {
            username.textColor = UIColor.red
            username.text = "required field"
        } else {
            defaults.set(username.text, forKey: "username")
            defaults.synchronize()
            performSegue(withIdentifier: "start", sender: self)
        }
    }
    
    // returns keyboard when enter is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    // executes when user taps text field
    func textFieldDidBeginEditing(_ textField: UITextField) {
        username.text = ""
        username.textColor = UIColor.black
    }
    
}

