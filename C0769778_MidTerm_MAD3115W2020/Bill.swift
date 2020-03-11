//
//  Bill.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import UIKit

enum BillType {
    case MOBILE, INTERNET, HYDRO, INSURANCE
}

public class Bill
    
{
  var billId: String
  var billDate: Date
  var billType: BillType
  var billTotal: Double = 0.0

init(billId: String, billDate: Date, billType: BillType)
    {
    self.billId = billId
    self.billType = billType
    self.billDate = billDate
    }
    
func billCalculate() -> Double
 {
var dummybillAmount = 0.0
    return dummybillAmount
 }
}
