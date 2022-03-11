//
//  SettingRowView.swift
//  Lada
//
//  Created by Maksim Maiorov on 10.03.2022.
//

import SwiftUI

struct SettingRowView: View {
    // MARK: PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

    // MARK: PREVIEW
struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Разработчик", content: "Максим Майоров (MaksMai)")
//                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingRowView(name: "GitHub", linkLabel: "Мой наработки", linkDestination: "github.com/MaksMai")
                .preferredColorScheme(.dark)
//                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
