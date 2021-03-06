//
//  DetailedCustomerViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class DetailedCustomerViewController: UIViewController {
    var customers: Customer?
    @IBOutlet weak var lblCustomerId: UILabel!
    @IBOutlet weak var lblCustomerLocation: UILabel!
    @IBOutlet weak var lblCustomerUsername: UILabel!
    @IBOutlet weak var lblCustomerdob: UILabel!
    @IBOutlet weak var imgViewBills: UIImageView!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    @IBOutlet weak var lblCustomerName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CUSTOMER DETAILS"
        self.lblCustomerId.text = customers?.customerId
        self.lblCustomerName.text = customers?.name
        self.lblCustomerEmail.text = customers?.email
        self.lblCustomerLocation.text = customers?.location
        self.lblCustomerdob.text = customers?.dateOfBirth
        self.lblCustomerUsername.text = customers?.userName
        imgViewBills.isUserInteractionEnabled = true
        imgViewBills.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTap)))
    }
    
    @objc func imageTap() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let showBillDetailsVC = sb.instantiateViewController(identifier: "showBillDetailsVC") as! ShowBillDetailsViewController
        showBillDetailsVC.customerBill = self.customers
        navigationController?.pushViewController(showBillDetailsVC, animated: true)
    }
}
