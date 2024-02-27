//
//  Random.swift
//  SwiftUtilityPodDemo
//
//  Created by Lee McCormick on 2/27/24.
//

import Foundation

public class StringUtils {
    public static let shared: StringUtils = .init()
    
    public init() {}
    
    public func isEmpty(_ string: String?) -> Bool {
        return string?.isEmpty ?? true
    }
    
    public func trimWhitespace(_ string: String) -> String {
        return string.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
