//
//  AppDelegate.swift
//  SimulatorMgr
//
//  Created by mlch911 on 2021/8/2.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate {

	var statusItem: NSStatusItem!
	@IBOutlet weak var statusMenu: NSMenu!
	
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
		statusItem.menu = statusMenu
		statusMenu.autoenablesItems = false
		if #available(OSX 11.0, *) {
			statusItem.button?.image = NSImage(systemSymbolName: "laptopcomputer.and.iphone", accessibilityDescription: nil)
		}
	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}
}

