//
//  UserSettings.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/26/23.
//

import Foundation

class UserSettings: ObservableObject {
    @Published var username: String = "guppy57"
    @Published var timeline: String = "Today"
    @Published var launchAtLogin: Bool = true
}
