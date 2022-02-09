//
//  CarModel.swift
//  Lada
//
//  Created by Maksim Maiorov on 09.02.2022.
//

import SwiftUI

// MARK: - CAR MODEL

struct Car: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var features: [String]
}
