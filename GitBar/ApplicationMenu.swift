//
//  ApplicationMenu.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import Foundation
import SwiftUI

class ApplicationMenu: NSObject {
    let menu = NSMenu()
    
    func createMenu() -> NSMenu {
        let contentView = ContentView()
        let topView = NSHostingController(rootView: contentView)
        topView.view.frame.size = CGSize(width: 225, height: 225)
        
        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(NSMenuItem.separator())
        
        let aboutMenuItem = NSMenuItem(title: "About GitBar", action: #selector(about), keyEquivalent: "")
        aboutMenuItem.target = self
        menu.addItem(aboutMenuItem)
        
        let rateUsMenuItem = NSMenuItem(title: "Rate us", action: #selector(openLink), keyEquivalent: "")
        rateUsMenuItem.target = self
        rateUsMenuItem.representedObject = "https://kreativeusa.com"
        menu.addItem(rateUsMenuItem)
        
        let exploreKreativeMenuItem = NSMenuItem(title: "Explore Kreative", action: #selector(openLink), keyEquivalent: "")
        exploreKreativeMenuItem.target = self
        exploreKreativeMenuItem.representedObject = "https://kreativeusa.com/initiatives"
        menu.addItem(exploreKreativeMenuItem)
        
        let vscodeMenuItem = NSMenuItem(title: "Get GitBar for VSCode", action: #selector(openLink), keyEquivalent: "")
        vscodeMenuItem.target = self
        vscodeMenuItem.representedObject = "https://gitbar.kreativeusa.com"
        menu.addItem(vscodeMenuItem)
        
        let quitMenuItem = NSMenuItem(title: "Quit GitBar", action: #selector(quit), keyEquivalent: "q")
        quitMenuItem.target = self
        menu.addItem(quitMenuItem)
        
        return menu
    }
    
    @objc func about(sender: NSMenuItem) {
        NSApp.orderFrontStandardAboutPanel()
    }
    
    @objc func openLink(sender: NSMenuItem) {
        let link = sender.representedObject as! String
        guard let url = URL(string: link) else { return }
        NSWorkspace.shared.open(url)
    }
    
    @objc func quit(sender: NSMenuItem) {
        NSApp.terminate(self)
    }
}
