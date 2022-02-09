//
//  OnboardingView.swift
//  Lada
//
//  Created by Maksim Maiorov on 03.02.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    var cars: [Car] = carsData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(cars[0...6]) { item in
                CarCardView(car: item)
            }
        } // TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    // MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(cars: carsData)
    }
}
