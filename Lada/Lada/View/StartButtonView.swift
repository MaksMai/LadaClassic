//
//  StartButtonView.swift
//  Lada
//
//  Created by Maksim Maiorov on 03.02.2022.
//

import SwiftUI
// MARK:  - PREVIEW

// MARK:  - BODY

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("Выйти из процесса адаптации")
        }) {
            HStack(spacing: 8) {
                Text("СТАРТ!")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.black, lineWidth: 1.25)
            )
        } // :BUTTON
        .accentColor(Color.black)
    }
}

// MARK:  - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
    }
}
