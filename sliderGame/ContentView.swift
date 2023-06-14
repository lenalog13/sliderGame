//
//  ContentView.swift
//  sliderGame
//
//  Created by Елена Логинова on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State var value = Double.random(in: 0...100)
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Подвинь слайдер, как можно ближе к: \(value)")
            
            HStack {
                Text("0")
                CustomSliderView(value: $value, alpha: 50)
                Text("100")
            }
            Button("Проверь меня!") {
                
            }
            Button("Начать заново") {
                
            }
        }
        .padding()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
