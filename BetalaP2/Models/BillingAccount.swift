//
//  BillingAccount.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation

struct BillingAccount: Codable {
    let id, activatedDate: Int
    let closedDate: Date?
    let inactiveStartDate, inactiveEndDate: Int
    let department, billingAddress, deliveryAddress, billingEmailAddress: String?
    let contactEmail: String
    let personalCode: String?
    let contactFirstName, contactLastName, contactPhoneNumber: String
    let login: Login
    let accountStatus: String
    let scheduledAccountStatusChange, paymentStatus: String?
    let carsRestriction: Bool
    let parkingRestrictionEnabled: String?
    let fileAttachment: Bool
    let fileAttachmentEmail, attachmentType: String?
    let customer: Customer
    let paymentConfiguration: PaymentConfiguration
    let requestedPaymentConfiguration, accountBillingFrequency, currentBillingPeriodStart, campaignCode: String?
    let monthlyBillingOverviewEmailEnabled: Bool
    let daysForDueDate: String?
    let paymentDevice: Device
    let prepaidBalance, extBalance, extBalanceDue, extBalanceReadDate: String?
    let prepaidOnly: Bool
    let productPackageId, invoiceFeeDisabled, fleetCompany, copyBillingAddressToParkingUsers: String?
    let copyDeliveryAddressToParkingUsers, allowAutomaticBillingAddressUpdate, splitPaymentCompany: String?
    let sendReceiptToEmail: Bool
    let sendBillinInfoPdfToEmail: String?
    let hasBeenOnVisma: Bool
    let vismaSendDetailedInvoice, showNameOnInvoice, billingInfoSplitMode, billingInfoSortMode: String?
    let billingInfoPageBreak, receiptCost, receiptCostCurrency: String?
    let multipleParkingsEnabled: Bool
    let accountName: String?
    let blockParkings: Bool
    let integrationPartners: [String]?
    let billingInfoEmailsEnabled: Bool
    let actualPaymentStatus: String
    
    struct Device: Codable {
        let id: Int
        let type, data: String
        let dataMap: [String: String]?
        let paymentConfiguration: PaymentConfiguration
    }
}
