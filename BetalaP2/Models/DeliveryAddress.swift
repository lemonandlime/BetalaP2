//
//  DeliveryAddress.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct DeliveryAddress: Codable {
    let id: Int
    let co, street, street2, street3: String?
    let suburb, postalCode, city: String?
    let countryId: Int
    let countryCode, state: String?
}
