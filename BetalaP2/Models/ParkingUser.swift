//
//  ParkingUser.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct ParkingUser: Codable {
    let id, activatedDate: Int
    let closedDate, inactiveStartDate, inactiveEndDate: String?
    let smsNumber: String
    let deliveryAddress: DeliveryAddress
    let defaultCars: String?
    let firstName, lastName, alternativePhoneNumber: String
    let login: Login
    let accountStatus: String
    let scheduledAccountStatusChange: String?
    let email: String
    let campaignCode: String?
    let remindersTimeFixed: Bool
    let billingAccount: String?
    let orderId: Int
    let costCenter: String?
    let carsRestrictionDisabled, parkingRestrictionDisabled, blockParkings: Bool
}
