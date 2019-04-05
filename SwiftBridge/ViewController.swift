//
//  ViewController.swift
//  SwiftBridge
//
//  Created by knight on 4/3/19.
//  Copyright © 2019 JimYu. All rights reserved.
//

import Cocoa
import HTMLEscaper

extension String {
    public func escapedHTMLString() -> String? {
        return self.withCString() {
            guard let v = escape_html(UnsafeMutablePointer(mutating: $0)) else { return nil }
            return String(bytesNoCopy: v, length: strlen(v), encoding: .utf8, freeWhenDone: true)
        }
    }
    
    public func unescapedHTMLString() -> String? {
        return self.withCString() {
            guard let v = unescape_html(UnsafeMutablePointer(mutating: $0)) else { return nil }
            return String(bytesNoCopy: v, length: strlen(v), encoding: .utf8, freeWhenDone: true)
        }
    }
}

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

