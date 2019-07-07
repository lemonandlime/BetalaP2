//
//  Car.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct Car: Codable {
    let id: Int
    let licenseNumber: String
    let licenseNumberWithSeparators, stickerNumber: String?
    let country: Country
    let orderId: Int
    let make, model, carState, colorName: String?
    let anprEnabled, tollEnabled: Bool
    let licenseWithState: String
}
