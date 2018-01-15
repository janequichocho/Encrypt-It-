//
//  Common.swift
//  Encrypt-it!
//
//  Created by Jane Quichocho on 6/10/17.
//  Copyright © 2017 Jane Quichocho. All rights reserved.
//

import Foundation

class Common {
    var cryptKey = [Character: Character]()
    
    public init() {
        cryptKey["a"] = "0"
        cryptKey["e"] = "1"
        cryptKey["i"] = "2"
        cryptKey["o"] = "3"
        cryptKey["u"] = "4"
    }
}
