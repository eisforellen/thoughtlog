//
//  AuthenticationManager.swift
//  thoughtlog
//
//  Created by Ellen Mey on 11/7/17.
//  Copyright © 2017 Detroit Labs. All rights reserved.
//

import LocalAuthentication

class AuthenticationManager {
    let context = LAContext()
    
    func canEvaluatePolicy() -> Bool {
        return context.canEvaluatePolicy(.deviceOwnerAuthentication, error: nil)
    }
    
    func authenticateUser(completion: @escaping () -> Void) {
        // TODO: Handle the case where the device cannot authenticate
        guard canEvaluatePolicy() else { return }
        
        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Verify your identity to access your log") { (success, evaluateError) in
            if success {
                DispatchQueue.main.async(execute: completion)
            } else {
                // TODO: Handle error cases
            }
        }
    }
}
