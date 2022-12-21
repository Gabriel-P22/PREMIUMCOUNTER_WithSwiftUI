//
//  CounterApp.swift
//  Counter
//
//  Created by Gabriel Paschoal on 20/12/22.
//

import SwiftUI

@main
struct CounterApp: App {
    var body: some Scene {
        WindowGroup {
            CounterView(counterVM: CounterViewModel())
        }
    }
}
