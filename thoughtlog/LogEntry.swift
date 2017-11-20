//
//  LogEntry.swift
//  thoughtlog
//
//  Created by Ellen Mey on 11/6/17.
//  Copyright © 2017 Detroit Labs. All rights reserved.
//

import UIKit

class LogEntry {
    var entryText: String
    let dateCreated = Date()
    
    init(entryText: String) {
        self.entryText = entryText
    }
}
