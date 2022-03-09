//
//  LadaHeaderView.swift
//  Lada
//
//  Created by Maksim Maiorov on 09.03.2022.
//

import SwiftUI

struct LadaHeaderView: View {
    
    // MARK: PROPERTIES
    
    var car: Car
    @State private var isAnimatingImage: Bool = false
    
    // MAK: BODY
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(car.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } // ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// MARK: PREVIEW

struct LadaHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LadaHeaderView(car: carsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
