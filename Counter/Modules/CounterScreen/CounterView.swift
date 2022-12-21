//
//  CounterView.swift
//  Counter
//
//  Created by Gabriel Paschoal on 20/12/22.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject private var counterVM: CounterViewModel
    
    init(counterVM: CounterViewModel) {
        self.counterVM = counterVM
    }
    
    var body: some View {
        VStack {
            Text(counterVM.isPremium ? "PREMIUM" : "")
                .frame(width: 200, height: 100)
                .font(.largeTitle)
                .foregroundColor(.green)
            
            Text("\(counterVM.value)")
                .font(.largeTitle)
            
            Button("Increment") {
                self.counterVM.increment()
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        let counterVM = CounterViewModel()
        CounterView(counterVM: counterVM)
    }
}
