//
//  MenuView.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/26/23.
//

import Foundation
import SwiftUI

struct MenuView: View {
    @State private var hover: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Button {
                NSApp.orderFrontStandardAboutPanel()
            } label: {
                HStack {
                    Text("About GitBar")
                    Spacer()
                }
            }
            .buttonStyle(.borderless)
            .onHover() { isHovered in
                self.hover = isHovered
                DispatchQueue.main.async {
                    if (self.hover) {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }
            }
            Button {
                let link = "https://kreativeusa.com/initiatives"
                guard let url = URL(string: link) else { return }
                NSWorkspace.shared.open(url)
            } label: {
                HStack {
                    Text("Explore Kreative")
                    Spacer()
                }
            }
            .buttonStyle(.borderless)
            .onHover() { isHovered in
                self.hover = isHovered
                DispatchQueue.main.async {
                    if (self.hover) {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }
            }
            Button {
                let link = "https://kreativeusa.com"
                guard let url = URL(string: link) else { return }
                NSWorkspace.shared.open(url)
            } label: {
                HStack {
                    Text("Rate us")
                    Spacer()
                }
            }
            .buttonStyle(.borderless)
            .onHover() { isHovered in
                self.hover = isHovered
                DispatchQueue.main.async {
                    if (self.hover) {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }
            }
            Button {
                let link = "https://gitbar.kreativeusa.com"
                guard let url = URL(string: link) else { return }
                NSWorkspace.shared.open(url)
            } label: {
                HStack {
                    Text("GitBar for VSCode")
                    Spacer()
                }
            }
            .buttonStyle(.borderless)
            .onHover() { isHovered in
                self.hover = isHovered
                DispatchQueue.main.async {
                    if (self.hover) {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }
            }
            Button {
                NSApp.terminate(self)
            } label: {
                HStack {
                    Text("Quit GitBar")
                    Spacer()
                }
            }
            .buttonStyle(.borderless)
            .onHover() { isHovered in
                self.hover = isHovered
                DispatchQueue.main.async {
                    if (self.hover) {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }
            }
        }
        .padding()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
