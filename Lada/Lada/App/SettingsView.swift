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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    GroupBox(
                        label: SettingsLabelView(label: "Настройка", image: "gear")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("При желании вы можете перезагрузить приложение.  Переключиив переключатель Вы вернетесь к экрану приветствия!")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Перезапущенный".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Перезапуск".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    // MARK: - Section #3
                    GroupBox(
                    label: SettingsLabelView(label: "Приложение", image: "appleLogo")
                    ) {
                       SettingRowView(name: "Разработчик", content: "Максим Майоров")
                        SettingRowView(name: "Дизайнер", content: "Максим Майоров")
                        SettingRowView(name: "Совместимость", content: "iOS 15.2")
                        SettingRowView(name: "GitHub", linkLabel: "Мой наработки", linkDestination: "github.com/MaksMai")
                        SettingRowView(name: "Telegram", content: "@mvmaiorov")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Версия", content: "1.0")
                    }
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
