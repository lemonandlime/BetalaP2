//
//  Customer.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct Customer: Codable {
    let id: Int
    let active: Bool
    let createdDate: Date?
    let activatedDate: Int
    let closedDate, inactiveStartDate, inactiveEndDate: Date?
    let country: Country
    let phoneNumber, firstName, lastName: String
    let organizationName: String?
    let customerType: String
    let login: Login
    let accountStatus: String
    let scheduledAccountStatusChange, idNr, campaignCode: String?
    let regretPossible, validateVatNumber, workAccount, blockParkings: Bool
}
