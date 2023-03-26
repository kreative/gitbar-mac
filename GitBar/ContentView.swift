//
//  ContentView.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Stats")
                .font(.headline)
            Text("21 Today")
            Divider()
            Button(action: {
                NSApplication.shared.terminate(self)
            }) {
                Text("Quit")
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
