//
//  ProtectedViewController.swift
//  thoughtlog
//
//  Created by Ellen Mey on 11/9/17.
//  Copyright © 2017 Detroit Labs. All rights reserved.
//

import UIKit

class ProtectedViewController: UIViewController {
    
    class func present(into window: UIWindow) {
        let auth = AuthenticationManager()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let protectedVC = storyboard.instantiateViewController(withIdentifier: "protected")
        let currentRootVC = window.rootViewController
        window.rootViewController = protectedVC

        auth.authenticateUser() { 
            window.rootViewController = currentRootVC
        }
    }
}
