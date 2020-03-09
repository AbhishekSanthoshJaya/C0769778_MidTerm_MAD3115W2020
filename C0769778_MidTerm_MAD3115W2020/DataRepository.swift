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
    
//--------- CUSTOMER OBJECTS ---------
    
func addCustomer(customer: Customer)
  {
    let cid = customer.customerId
    customerDictionary.updateValue(customer, forKey: cid)
  }

func loadData(){
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    let c1 =  Customer(customerId: "A001", name: "Abhishek Santhosh Jaya", email: "aby35@gmail.com", userName: "Aby", password: "aby123", location: "India", dateOfBirth: "1995/04/18")
    let c2 =  Customer(customerId: "A002", name: "Prakash Rana", email: "Rana@gmail.com", userName: "Rana", password: "rana123", location: "Nepal", dateOfBirth: "1995/04/18")
    let c3 =  Customer(customerId: "A003", name: "Raghav", email: "something@gmail.com", userName: "notraghav",password: "raghav123", location: "Toronto", dateOfBirth: "1995/07/22")
    let m1 =  Mobile(billId: "MB100", billDate: formatter.date(from: "2019/10/12")!, billType: BillType.MOBILE, manufacturerName: "APPLE INC.", planName: "Student Plan", mobileNumber: "4379077578", mobGbUsed: 1, minute: 6)
    c1.newBill(bill: m1, billId: "MB100")
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


