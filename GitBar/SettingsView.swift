//
//  SettingsView.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import SwiftUI

struct SettingsView: View {
    var timelines = ["Today", "This Week", "This Month", "This Year", "All Time"]
    
    @State private var selectedTimeline = "Today"
    
    var body: some View {
        ZStack{
            Color.white
            VStack(alignment: .leading) {
                Divider()
                Text("Settings").font(.subheadline).multilineTextAlignment(.leading)
                Picker("Timeline", selection: $selectedTimeline) {
                    ForEach(timelines, id: \.self) {
                        Text($0)
                    }
                }
                Text("Current timeline: \(selectedTimeline)")
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding()
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
