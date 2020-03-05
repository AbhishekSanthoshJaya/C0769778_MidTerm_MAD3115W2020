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
     var firstName: String
     var lastName: String
    
    init(customerId: String, firstName: String, lastName: String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
    }
}
