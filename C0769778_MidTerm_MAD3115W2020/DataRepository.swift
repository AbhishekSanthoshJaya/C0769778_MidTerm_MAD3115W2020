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
    
private init(){
}

 
static func getInstance() -> DataRepository{
return repoObj
    }

var c1 = try! Customer(customerId: "A001", name: "Abhishek Santhosh Jaya", email: "abhisheksj35@gmail.com", userName: "Aby", password: "aby123")
var c2 = try! Customer(customerId: "A002", name: "Prakash Rana", email: "Rana@gmail.com", userName: "Rana", password: "rana123")
var c3 = try! Customer(customerId: "A003", name: "NotRaghav", email: "something@gmail.com", userName: "notraghav",password: "dontlookatthiscode")
    
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
    
func dictionaryToArray() -> [Customer]{
    var customerListStorage: [Customer] = []
    for i in customerDictionary{
        customerListStorage.append(i.value)
     }
    return customerListStorage
    }
}


