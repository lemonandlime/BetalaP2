//
//  Login.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct Login: Codable {
    let id: Int
    let username: String
    let password: String?
    let email: String
    let personalCode: String?
    let firstName, lastName, siteLanguage, primaryPhoneNumber: String
    let alternativePhoneNumber, domainName, disabilityCard: String?
}
