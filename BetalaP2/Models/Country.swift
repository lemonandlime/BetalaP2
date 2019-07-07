//
//  Country.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct Country: Codable {
    let id: Int
    let countryCode: String
    let locale: Locale
    let currency: String?
    let vatInPercent: Int
    let timeZones: [TimeZone]
    let enabled: Bool
    let callingPrefix: String
    let hasRegionalHolidays: Bool
    let name: String
    
    struct TimeZone: Codable {
        let id, display: String
    }
}
