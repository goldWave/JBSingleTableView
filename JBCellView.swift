//
//  JBCellView.swift
//  JBTableViewMenu
//
//  Created by jimbo on 23/08/2017.
//  Copyright © 2017 jimbo. All rights reserved.
//

import Cocoa

class JBCellView: NSTableCellView {

    @IBOutlet weak var myLabel: NSTextField!
    @IBOutlet weak var imagView: NSImageView!
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        self.wantsLayer = true;
            self.layer?.backgroundColor = NSColor.lightGray.cgColor
    }
}
