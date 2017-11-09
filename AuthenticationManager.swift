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
    
    func canEvaluatedPolicy() -> Bool {
        return context.canEvaluatePolicy(.deviceOwnerAuthentication, error: nil)
    }
    
    func authenticateUser(completion: @escaping () -> Void) {
        guard canEvaluatedPolicy() else { return }
        
        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Verify your identity to access your log") { (success, evaluateError) in
            if success {
                DispatchQueue.main.async {
                    completion()
                }
            } else {
                // TODO: Handle error cases
            }
        }
    }
}
