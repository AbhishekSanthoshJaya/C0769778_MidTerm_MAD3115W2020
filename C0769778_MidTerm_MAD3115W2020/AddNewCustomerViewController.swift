//
//  AddNewCustomerViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {

    @IBOutlet weak var lblCustomerInformation: UILabel!
    @IBOutlet weak var txtNewCustomerId: UITextField!
    @IBOutlet weak var txtNewCustomerEmail: UITextField!
    @IBOutlet weak var txtNewCustomerName: UITextField!
    
    @IBAction func btnAddNewCustomer(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
