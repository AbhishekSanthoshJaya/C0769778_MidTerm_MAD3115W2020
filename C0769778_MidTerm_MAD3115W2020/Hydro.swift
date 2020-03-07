//
//  Hydro.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import UIKit

public class Hydro: Bill
{
private var agencyName: String = ""
private var unitsUsed: Double = 0.0

  init(billId: String, billDate: Date, billType: BillType, agencyName:String, unitsUsed: Double)
{
  self.agencyName = agencyName
  self.unitsUsed = unitsUsed
  super.init(billId: billId, billDate: billDate, billType: billType)
  self.billTotal = billCalculate()
}

//------- METHOD TO CALCULATE TOTAL HYDRO BILL -------
func billCalculate() -> Double
{
       var billAmount = 0.0
    if (unitsUsed < 10)
    {
        billAmount = 1.5 * unitsUsed
    }
    else
    {
        billAmount = 2 * unitsUsed
    }
return billAmount
  }
}
