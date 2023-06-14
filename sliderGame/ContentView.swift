//
//  ContentView.swift
//  sliderGame
//
//  Created by Елена Логинова on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var targetValue = Int.random(in: 0...100)
    @State private var currentValue = Double.random(in: 0...100)
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Подвинь слайдер, как можно ближе к: \(targetValue)")
            
            HStack {
                Text("0")
                CustomSliderView(value: $currentValue, alpha: computeScore())
                Text("100")
            }
            Button("Проверь меня!") {
                
            }
            Button("Начать заново") {
                
            }
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
