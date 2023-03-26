//
//  GitBarApp.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import SwiftUI

@main
struct GitBarApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?
    
    var popOver = NSPopover()

    func applicationDidFinishLaunching(_ notification: Notification) {
        // initializes the main content view
        let mainContentView = ContentView()
        
        // sets up the popover to show on status bar icon click
        popOver.behavior = .transient
        popOver.animates = true
        popOver.contentViewController = NSViewController()
        popOver.contentViewController?.view = NSHostingView(rootView: mainContentView)

        // sets up the status bar icon
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

        if let MenuButton = statusItem?.button{
            MenuButton.title = "🚀 GitBar2"
            MenuButton.action = #selector(MenuButtonToggle)
        }
    }
    
    @objc func MenuButtonToggle() {
        if popOver.isShown {
            popOver.close()
        } else {
            if let menuButton = statusItem?.button{
                self.popOver.show(relativeTo: menuButton.bounds, of: menuButton, preferredEdge: NSRectEdge.minY)
            }
        }
    }
}
