//
//  Customer.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import UIKit

class Customer
{
    var customerId: String
    var name: String?
    var email: String
    var userName: String
    var password: String?
    var location: String?
    var dateOfBirth: String?
    lazy var customerBills = [String: Bill]()
    var allTotal: Double = 0.0
    
    init(customerId: String, name: String, email: String, userName: String, password: String, location: String, dateOfBirth: String) {
        self.customerId = customerId
        self.name = name
        self.email = email
        self.userName = userName
        self.password = password
        self.location = location
        self.dateOfBirth = dateOfBirth
    }
    
    func newBill(bill: Bill, billId: String)
        {
          customerBills.updateValue(bill, forKey: billId)
        }
    
    func allBillsTotal() -> Double
    {
      var allTotal2 = 0.0
      for i in customerBills{
        allTotal2 += i.value.billTotal
      }
      return allTotal2
    }
    
    func getBills() -> [Bill]{
        var bills = [Bill]()
        for i in customerBills{
            bills.append(i.value)
        }
        return bills
    }

    
}
    
