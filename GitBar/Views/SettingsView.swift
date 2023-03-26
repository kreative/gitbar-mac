//
//  SettingsView.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import SwiftUI

struct SettingsView: View {
    var timelines = ["Today", "This Week", "This Month", "This Year", "All Time"]
    
    @State private var username = "guppy57"
    @State private var selectedTimeline = "Today"
    @State private var showSuffix = true
    @State private var launchAtLogin = true
    
    @AppStorage("username") var defaultUsername: String = "u"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Settings").font(.subheadline).multilineTextAlignment(.leading)
            TextField("GitHub username", text: $username)
            Picker("Timeline", selection: $selectedTimeline) {
                ForEach(timelines, id: \.self) {
                    Text($0)
                }
            }
            Toggle(isOn: $showSuffix) {
                Text("Icon and count only")
            }
            Toggle(isOn: $launchAtLogin) {
                Text("Launch at login")
            }
            Button {
                print("To be saved")
            } label: {
                Text("Save settings")
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
