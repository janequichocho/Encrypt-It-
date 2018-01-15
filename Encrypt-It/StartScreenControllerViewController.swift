//
//  StartScreenControllerViewController.swift
//  Encrypt-it!
//
//  Created by Jane Quichocho on 6/8/17.
//  Copyright © 2017 Jane Quichocho. All rights reserved.
//

import UIKit

class StartScreenControllerViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    @IBOutlet weak var welcomeUser: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = defaults.string(forKey: "username")! + "!"
    }

    @IBAction func encryptIt(_ sender: Any) {
        performSegue(withIdentifier: "encrypt", sender: self)
    }
    
    @IBAction func decryptIt(_ sender: Any) {
        performSegue(withIdentifier: "decrypt", sender: self)
    }
    
    // Resets username and sends user back to welcome screen
    @IBAction func logout(_ sender: Any) {
        defaults.set(nil, forKey: "username")
        defaults.synchronize()
        performSegue(withIdentifier: "logout", sender: self)
    }
}
