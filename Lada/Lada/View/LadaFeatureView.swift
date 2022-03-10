//
//  LadaFeatureView.swift
//  Lada
//
//  Created by Maksim Maiorov on 09.03.2022.
//

import SwiftUI

struct LadaFeatureView: View {
    // MARK: PROPERTIES
    var car: Car
    let features: [String] = ["Модель", "Трансмиссия", "Объем двигателя", "Мощность двигателя"]
    
    // MAPK: BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Характеристики") {
                ForEach(0..<features.count, id:\.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(features [item])
                        }
                        .foregroundColor(car.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(car.features [item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //  GroupBox
    }
}

// MARK: PREVIEW
struct LadaFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        LadaFeatureView(car: carsData[0])
            .preferredColorScheme(.dark)
//            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
