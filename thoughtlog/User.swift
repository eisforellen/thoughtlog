//
//  File.swift
//  thoughtlog
//
//  Created by Ellen Mey on 11/6/17.
//  Copyright © 2017 Detroit Labs. All rights reserved.
//

import Foundation

class User: NSObject {
    static let sharedInstance = User(name: "Bob")
    
    let name: String
    var log = [LogEntry]()
    
    private init(name: String) {
        self.name = name
    }
}

