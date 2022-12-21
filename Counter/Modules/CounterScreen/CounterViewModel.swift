//
//  CounterViewModel.swift
//  Counter
//
//  Created by Gabriel Paschoal on 20/12/22.
//

import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published private var counter: CounterModel = CounterModel()
    
    var value: Int {
        counter.value
    }
    
    var isPremium: Bool {
        counter.isPremium
    }
    
    func increment() {
        counter.increment()
    }
}
