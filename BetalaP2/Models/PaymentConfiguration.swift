//
//  PaymentConfiguration.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct PaymentConfiguration: Codable {
    let id: Int
    let name: String?
    let label: String
    let country: String?
    let paymentMethod: String
    let data, minimumTotalPriceInclusiveVatUntilReady: String?
    let maxDaysUntilReady: Int
    let invoiceFeeEnabled: Bool
    let billingFrequency: String?
    let billingEmailApplicable, prepaidOnly, registrationAmountUserDefined, autoTopUpSupported: Bool
    let billingInfoSplitMode: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, label, country, paymentMethod, data
        case minimumTotalPriceInclusiveVatUntilReady = "minimumTotalPriceInclusiveVATUntilReady"
        case maxDaysUntilReady, invoiceFeeEnabled, billingFrequency, billingEmailApplicable, prepaidOnly, registrationAmountUserDefined, autoTopUpSupported, billingInfoSplitMode
    }
}
