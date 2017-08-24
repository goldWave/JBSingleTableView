//
//  ViewController.swift
//  JBTableViewMenu
//
//  Created by jimbo on 23/08/2017.
//  Copyright © 2017 jimbo. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var myTableView: NSTableView! {
        didSet {
             self.myTableView.register(NSNib(nibNamed: "JBCellView", bundle: nil)!, forIdentifier: "JBCellView")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: NSTableViewDelegate, NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 15;
    }
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell  = myTableView.make(withIdentifier: "JBCellView", owner: self) as! JBCellView
        cell.myLabel.stringValue = "在Swift语言中用了willSet和didSet这两个特性来监视属性的除初始化之外的属性值变";
        return cell;
        
    }
}
