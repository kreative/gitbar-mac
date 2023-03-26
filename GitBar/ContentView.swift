//
//  ContentView.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Your Contributions").font(.subheadline)
                Text("21 Today")
                Divider()                
            }
            .padding()
            
            SettingsView().frame(maxWidth: .infinity)
            MenuView().frame(maxWidth: .infinity)
        }
        .frame(width: 225)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
