//
//  SliderView.swift
//  sliderGame
//
//  Created by Елена Логинова on 12.06.2023.
//

import SwiftUI

struct CustomSliderView: UIViewRepresentable {
    
    @Binding var value: Double
    
    let alpha: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.maximumValue = 0
        slider.maximumValue = 100
        
        slider.minimumTrackTintColor = .blue
        slider.thumbTintColor = .red
            .withAlphaComponent(CGFloat(alpha) / 100)
        
        return slider
    }
    
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.thumbTintColor?.withAlphaComponent(CGFloat(alpha) / 100)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
    
}


extension CustomSliderView {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func didTapChange(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

struct CustomSliderView_Previews: PreviewProvider {
    static var previews: some View{
        CustomSliderView(value: .constant(50), alpha: 50)
    }
}
