//
//  CounterModel.swift
//  Counter
//
//  Created by Gabriel Paschoal on 20/12/22.
//

import Foundation

struct CounterModel {
    var value: Int = 0
    var isPremium: Bool = false
    
    mutating func increment() {
        value += 1
        isPremiumCheck()
    }
    
    mutating func isPremiumCheck() {
        if value.isMultiple(of: 3) {
            return isPremium = true
        }
        isPremium = false
    }
}
