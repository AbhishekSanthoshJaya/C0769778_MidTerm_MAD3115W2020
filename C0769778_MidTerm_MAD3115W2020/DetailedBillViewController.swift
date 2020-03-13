//
//  DetailedBillViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class DetailedBillViewController: UIViewController {

//    var currentMobileBill: Mobile?
//    var currentHydroBill: Hydro?
//    var currentInternetBill: Internet?
    var currentBill: Bill?
    
    @IBOutlet weak var lbldetailBilltype: UILabel!
    @IBOutlet weak var lbldetailbillId: UILabel!
    @IBOutlet weak var lbldetailbillDate: UILabel!
    @IBOutlet weak var lbldetailBillProvider: UILabel!
    @IBOutlet weak var lbldetailBillUsed: UILabel!
    @IBOutlet weak var lblnumbe: UILabel!
    @IBOutlet weak var lblgbUsed: UILabel!
    @IBOutlet weak var lblminsused: UILabel!
    let someBill = DataRepository.getInstance().getHydroBills()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lbldetailbillId.text = currentBill?.billId
        self.lbldetailbillDate.text = currentBill?.billDate.getFormattedDate()
        

        // mobile
        if let mobileObj = DataRepository.getInstance().getMobileBill(billId: self.currentBill!.billId)
        {
            self.lbldetailBilltype.text = "YOUR MOBILE BILL"
            self.lbldetailBillProvider.text = mobileObj.manufacturerName
            self.lblnumbe.text = mobileObj.mobileNumber
            self.lblgbUsed.text = String(mobileObj.mobGbUsed)
            self.lblminsused.text = String(mobileObj.minute)
            lbldetailBillProvider.text = mobileObj.manufacturerName

            
        }
        
        if let hydObj = DataRepository.getInstance().getHydroBill(billId: self.currentBill!.billId)
        {
            
        }
        
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
