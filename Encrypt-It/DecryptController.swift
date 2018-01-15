//
//  DecryptController.swift
//  Encrypt-it!
//
//  Created by Jane Quichocho on 6/9/17.
//  Copyright © 2017 Jane Quichocho. All rights reserved.
//

import UIKit

class DecryptController: UIViewController {
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

    @IBAction func decrypt(_ sender: Any) {
        var decrypter = [Character: Character]()
        for (key, value) in key.cryptKey {
            decrypter[value] = key;
        }
        var result: [Character] = []
        var input: String! = textView.text
        for character in input.characters {
            if (decrypter[character] == nil) {
                result.append(character)
            } else {
                result.append(decrypter[character]!)
            }
        }
        let message = String(result)
        textView.text = message
        textView.resignFirstResponder()
    }
    
    
}
