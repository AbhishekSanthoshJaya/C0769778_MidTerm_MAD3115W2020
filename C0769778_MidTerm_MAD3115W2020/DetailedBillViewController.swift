//
//  DetailedBillViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class DetailedBillViewController: UIViewController {

    var currentMobileBill: Mobile?
    var currentHydroBill: Hydro?
    var currentInternetBill: Internet?
    
    @IBOutlet weak var lbldetailBilltype: UILabel!
    @IBOutlet weak var lbldetailbillId: UILabel!
    @IBOutlet weak var lbldetailbillDate: UILabel!
    @IBOutlet weak var lbldetailBillProvider: UILabel!
    @IBOutlet weak var lbldetailBillUsed: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.lbldetailbillId.text = currentMobileBill?.billId
        self.lbldetailbillDate.text = currentMobileBill?.billDate.getFormattedDate()
        self.lbldetailBillProvider.text = currentMobileBill?.manufacturerName
        self.lbldetailBillUsed.text = currentMobileBill?.planName
        self.lbldetailBilltype.text = "YOUR MOBILE BILL"
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
