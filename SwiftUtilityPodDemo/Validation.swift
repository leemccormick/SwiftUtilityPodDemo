//
//  Validation.swift
//  SwiftUtilityPodDemo
//
//  Created by Lee McCormick on 2/26/24.
//

import Foundation

public class Validation {
    public let validationGreeting  = "Hello, I am a validation demo."
    public init() { }
    public func isValidEmail(_ email: String) -> Bool {
        // Regular expression pattern to match email format
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        // NSPredicate to evaluate the email format
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        return emailPredicate.evaluate(with: email)
    }
}
