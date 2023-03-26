//
//  SettingsView.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import SwiftUI

struct SettingsView: View {
    var timelines = ["Today", "This Week", "This Month", "This Year",]
    
    @EnvironmentObject var settings: UserSettings
    
    @State private var newUsername: String = ""
    @State private var newSelectedTimeline = "Today"
    @State private var newLaunchAtLogin = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Settings").font(.subheadline).multilineTextAlignment(.leading)
            TextField("GitHub username", text: Binding(get: {
                return newUsername
            }, set: { newValue in
                newUsername = newValue
            }))
            Button {
                // set the new username
                settings.username = newUsername
                // get the new github account createdAt date
            } label: {
                Text("Update username")
            }
            Picker("Timeline", selection: $settings.timeline) {
                ForEach(timelines, id: \.self) {
                    Text($0)
                }
            }
            Toggle(isOn: $settings.launchAtLogin) {
                Text("Launch at login")
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .onAppear {
            self.newUsername = settings.username
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
