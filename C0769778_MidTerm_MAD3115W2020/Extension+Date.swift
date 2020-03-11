//
//  Extension+Date.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import UIKit

extension Date{

public func getFormattedDate() -> String
 {
     let dateFormatterPrint = DateFormatter()
     dateFormatterPrint.dateFormat = "MMM dd, yyyy"
     let formattedDate = dateFormatterPrint.string(from: self)
     return formattedDate
 }
}
