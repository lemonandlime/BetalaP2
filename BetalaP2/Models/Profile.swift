//
//  ProfileResponse.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let profile = try? newJSONDecoder().decode(Profile.self, from: jsonData)

import Foundation

struct Profile: Codable {
    let parkingUser: ParkingUser
    let billingAccount: BillingAccount
    let customerType: String
    let country: Country
    let cars: [Car]
    let ongoingParkings, groupedAccesses, allowedCars, promotionDiscount: [String?]?
    let totalUnfinishedParkingsCount, totalOngoingParkingsCount: Int
    let features: [String?]?
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}
