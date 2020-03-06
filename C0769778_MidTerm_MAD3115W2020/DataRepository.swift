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
lazy var customerListStorage: [Customer] = []
    
private init(){
}

var c1 = (Customer(customerId: "A001", name: "Abhishek Santhosh Jaya", email: "abhisheksj35@gmail.com"))
var c2 = (Customer(customerId: "A002", name: "Prakash Rana", email: "Rana@gmail.com"))
var c3 = (Customer(customerId: "A003", name: "NotRaghav", email: "something@gmail.com"))
 
    
static func getInstance() -> DataRepository{
return repoObj
    }
    
func addCustomer(customer: Customer)
  {
    let cid = customer.customerId
    customerDictionary.updateValue(customer, forKey: cid)
  }

func loadData(){
       addCustomer(customer: c1)
       addCustomer(customer: c2)
       addCustomer(customer: c3)
    }
    
func dictionaryToArray() -> [Customer]?{
    for i in customerDictionary{
        customerListStorage.append(i.value)
     }
    return customerListStorage
    }
}


