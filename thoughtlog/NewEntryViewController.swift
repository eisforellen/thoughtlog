//
//  ViewController.swift
//  thoughtlog
//
//  Created by Ellen Mey on 11/6/17.
//  Copyright © 2017 Detroit Labs. All rights reserved.
//

import UIKit

class NewEntryViewController: UIViewController {
    
    let currentUser = User.sharedInstance
    
    @IBOutlet weak var entryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButtonTapped(sender: UIButton) {
        if entryTextView.text != nil {
            let newEntry = LogEntry(entryText: entryTextView.text)
            currentUser.log.append(newEntry)
        }
    }
}
