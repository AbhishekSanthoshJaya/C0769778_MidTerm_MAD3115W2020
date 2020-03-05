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
lazy var customerList = Dictionary<String, Customer>()
   
private init(){
     
}
    
static func getInstance() -> DataRepository{
return repoObj
    }
}
