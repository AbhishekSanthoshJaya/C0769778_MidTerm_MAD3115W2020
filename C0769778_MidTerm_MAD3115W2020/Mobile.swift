//
//  Mobile.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import UIKit

class Mobile: Bill {
    var manufacturerName: String
    var planName: String
    var mobileNumber: String = ""
    var mobGbUsed: Int
    var minute: Int

    init(billId: String, billDate: Date, billType: BillType, manufacturerName: String, planName: String, mobileNumber: String, mobGbUsed: Int, minute: Int)
{
    self.manufacturerName = manufacturerName
    self.planName = planName
    self.mobileNumber = mobileNumber
    self.mobGbUsed = mobGbUsed
    self.minute = minute
    super.init(billId: billId, billDate: billDate, billType: billType)
    self.billTotal = billCalculate()
  }

//------- METHOD TO CALCULATE TOTAL MOBILE BILL -------
override func billCalculate() -> Double
    {
    var billAmount = 0.0
    billAmount = (Double(self.mobGbUsed) * 25) + (Double(self.minute) * 0.2)
    return billAmount
    }

}
