//
//  DataRepository.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import UIKit

class DataRepository {
   
static private var repoObj = DataRepository()
lazy var customerDictionary = Dictionary<String, Customer>()
private lazy var customerListStorage: [Customer] = []
   
private init(){
}
    
static func getInstance() -> DataRepository{
return repoObj
    }
    
func addCustomer(customerId: String, Customer: Customer)
  {
    customerDictionary.updateValue(Customer, forKey: customerId)
  }
  
func loadData(){
        customerListStorage.removeAll()
        customerListStorage.append(Customer(customerId: "A001", name: "Abhishek Santhosh Jaya", email: "abhisheksj35@gmail.com"))
        customerListStorage.append(Customer(customerId: "A002", name: "Prakash Rana", email: "Rana@gmail.com"))
        customerListStorage.append(Customer(customerId: "A003", name: "NotRaghav", email: "something@gmail.com"))
    }
}


