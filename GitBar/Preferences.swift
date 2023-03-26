//
//  Preferences.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import Foundation
import SwiftUI

struct Preferences {
    @AppStorage("username") var username: String = "guppy57"
    
    func setUsername(newUsername: String) {
        UserDefaults.standard.set(newUsername, forKey: "username")
    }
}
