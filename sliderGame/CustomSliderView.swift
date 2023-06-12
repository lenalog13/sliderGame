//
//  SliderView.swift
//  sliderGame
//
//  Created by Елена Логинова on 12.06.2023.
//

import SwiftUI

struct CustomSliderView: UIViewRepresentable {
    
    @Binding var alpha: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.maximumValue = 0
        slider.maximumValue = 100
        
        return slider
    }
    
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        
    }
    
    
}
