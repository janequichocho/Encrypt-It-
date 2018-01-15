//
//  EncryptController.swift
//  Encrypt-it!
//
//  Created by Jane Quichocho on 6/9/17.
//  Copyright © 2017 Jane Quichocho. All rights reserved.
//

import UIKit

class EncryptController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var key = Common()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func home(_ sender: Any) {
        performSegue(withIdentifier: "home", sender: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textView.resignFirstResponder()
    }
    
    @IBAction func encrypt(_ sender: Any) {
        var result: [Character] = []
        let input: String! = textView.text.lowercased()
        for character in input.characters {
            if (key.cryptKey[character] == nil) {
                result.append(character)
            } else {
                result.append(key.cryptKey[character]!)
            }
        }
        let message = String(result)
        textView.text = message
        textView.resignFirstResponder()
    }

}
