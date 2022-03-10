//
//  LadaDetailView.swift
//  Lada
//
//  Created by Maksim Maiorov on 09.03.2022.
//

import SwiftUI

struct LadaDetailView: View {
    //MARK: - PROPERTIES
    var car: Car

    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    LadaHeaderView(car: car)
                    VStack(alignment: .center, spacing: 20) {
                        // TITLE
                        Text(car.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(car.gradientColors[1])
                        // HEADLINE
                        Text(car.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // CAR FEATURE
                        LadaFeatureView(car: car)
                        // SUBHEDING
                        Text("Узнайте больше о \(car.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(car.gradientColors[1])
                        // DESCRIPTION
                        Text(car.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourseLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } // VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity, alignment: .center)
                } // VStack
                .navigationBarTitle(car.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // ScrollView
            .edgesIgnoringSafeArea(.top)
        } // NavigationView
    }
}

// MARK: - PREVIEW
struct LadaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LadaDetailView(car: carsData[0])
    }
}
