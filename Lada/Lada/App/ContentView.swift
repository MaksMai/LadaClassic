//
//  ContentView.swift
//  Lada
//
//  Created by Maksim Maiorov on 01.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var cars: [Car] = carsData
    
    //MARK: BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(cars.shuffled()) { item in
                    NavigationLink(destination: LadaDetailView(car: item)) {
                        LadaRowView(car: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Автомобили")
            .navigationBarItems(
                trailing:
                    Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            } // Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
            
        } // NavigationView
    }
}

// MARK: PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cars: carsData)
    }
}
