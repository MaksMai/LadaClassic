//
//  SettingsView.swift
//  Lada
//
//  Created by Maksim Maiorov on 10.03.2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section #1
                    GroupBox(
                        label:
                          SettingsLabelView(label: "Автомобили Жигули", image: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("Logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            Text("Жигули́ (1970—2014) — линейка легковых автомобилей малого класса Волжского автомобильного завода.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - Section #2
                    
                    // MARK: - Section #3
                    
                    
                } // VStack
                .navigationBarTitle(Text("Настройки"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                    
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            } // ScrollView
        } // NavigationView
       
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
