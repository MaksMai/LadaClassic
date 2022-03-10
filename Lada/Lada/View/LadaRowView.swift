//
//  LadaRowView.swift
//  Lada
//
//  Created by Maksim Maiorov on 09.03.2022.
//

import SwiftUI

struct LadaRowView: View {
    // MARK: PROPERTIES
    var car: Car
    
    // MAK: BODY
    var body: some View {
        HStack {
            Image(car.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        } // HStack
    }
}

// MARK: PREVIEW
struct LadaRowView_Previews: PreviewProvider {
    static var previews: some View {
        LadaRowView(car: carsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
