//
//  ContentView.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "me"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Contributions").font(.subheadline)
            Text("21 Today")
            Divider()
            Spacer()
        }
        .padding()
        
        SettingsView().frame(maxWidth: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
