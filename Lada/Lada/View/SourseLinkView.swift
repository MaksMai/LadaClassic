//
//  SourseLinkView.swift
//  Lada
//
//  Created by Maksim Maiorov on 09.03.2022.
//

import SwiftUI

struct SourseLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Более подробно в журнале:")
                Spacer()
                Link("За рулем", destination: URL(string: "https://www.zr.ru/content/articles/356531-istorija_zhigulej_simvol_minuvshego_veka/")!)
                Image(systemName: "link")
            }
            .font(.footnote)
        }
    }
}

struct SourseLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourseLinkView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
