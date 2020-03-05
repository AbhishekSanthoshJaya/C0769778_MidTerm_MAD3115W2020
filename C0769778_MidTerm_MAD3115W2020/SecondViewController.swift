//
//  SecondViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblCustomerList: UILabel!
    lazy var customerList: [Customer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func loadCustomers(){
        customerList.append(Customer(customerId: "A001", firstName: "Abhishek", lastName: "Santhosh Jaya"))
        customerList.append(Customer(customerId: "A002", firstName: "Prakash", lastName: "Rana"))
        customerList.append(Customer(customerId: "A003", firstName: "NotRaghav", lastName: "Irrelevant"))
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
