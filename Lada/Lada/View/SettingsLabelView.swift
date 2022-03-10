//
//  SettingsLabelView.swift
//  Lada
//
//  Created by Maksim Maiorov on 10.03.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: PROPERTIES
    var label: String
    var image: String
    
    // MAPK: BADY
    var body: some View {
        HStack {
            Text(label.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: image)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(label: "Автомобили Жигули", image: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
