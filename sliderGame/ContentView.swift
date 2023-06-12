//
//  ContentView.swift
//  sliderGame
//
//  Created by Елена Логинова on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State var value = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Подвинь слайдер, как можно ближе к:")
            
            HStack {
                Text("0")
                Slider(value: $value)
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
