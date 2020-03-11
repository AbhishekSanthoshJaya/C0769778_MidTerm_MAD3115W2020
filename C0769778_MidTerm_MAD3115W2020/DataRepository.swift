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
    let c1 =  Customer(customerId: "A001", name: "Abhishek Santhosh Jaya", email: "aby35@gmail.com", userName: "Aby", password: "aby123", location: "India", dateOfBirth: "Apr 15, 1995")
    let c2 =  Customer(customerId: "A002", name: "Prakash Rana", email: "Rana@gmail.com", userName: "Rana", password: "rana123", location: "Nepal", dateOfBirth: "Apr 27, 1995")
    let c3 =  Customer(customerId: "A003", name: "Raghav Bobal", email: "Raghav@gmail.com", userName: "Raghav",password: "raghav123", location: "Toronto", dateOfBirth: "Jun 27, 1992")
    let m1 =  Mobile(billId: "MB100", billDate: formatter.date(from: "2019/10/12")!, billType: BillType.MOBILE, manufacturerName: "APPLE INC.", planName: "Student Plan", mobileNumber: "4379077578", mobGbUsed: 1, minute: 6)
    let m2 = Mobile(billId: "MB200", billDate: formatter.date(from: "2019/06/18")!, billType: BillType.MOBILE, manufacturerName: "FIDO", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "4371029230", mobGbUsed: 2, minute: 11)
    let h1 = Hydro(billId: "HY100", billDate: formatter.date(from: "2019/09/12")!, billType: BillType.HYDRO, agencyName: "PUREWATA", unitsUsed: 22.21)
    let h2 = Hydro(billId: "HY200", billDate: formatter.date(from: "2019/05/15")!, billType: BillType.HYDRO, agencyName: "LIFELINE", unitsUsed: 8.2)
    let in1 = Internet(billId: "IN100", billDate: formatter.date(from: "2019/09/20")!, billType: BillType.INTERNET, providerName: "SKYLINK", gbUsed: 22.8)
    let in2 = Internet(billId: "IN200", billDate: formatter.date(from: "2019/10/12")!, billType: BillType.INTERNET, providerName: "STARLIGHT", gbUsed: 6.2)
       c1.newBill(bill: m1, billId: "MB100")
       c2.newBill(bill: h2, billId: "HY200")
       c3.newBill(bill: h1, billId: "HY100")
       c3.newBill(bill: m2, billId: "MB200")
       c3.newBill(bill: in1, billId: "IN100")
       c3.newBill(bill: m1, billId: "MB100")
       c3.newBill(bill: h2, billId: "HY200")
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


