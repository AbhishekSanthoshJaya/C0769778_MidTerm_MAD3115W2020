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

    @IBOutlet weak var lblnumbe: UILabel!
    @IBOutlet weak var lblgbUsed: UILabel!
    @IBOutlet weak var lblminsused: UILabel!
   
    @IBOutlet weak var hideNumber: UILabel!
    @IBOutlet weak var hidegbused: UILabel!
    @IBOutlet weak var hideminsused: UILabel!
    @IBOutlet weak var hideprovider: UILabel!
    
    
    @IBOutlet weak var lblHydroAgency: UILabel!
    @IBOutlet weak var lblHydroUnitsUsed: UILabel!
    
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
            self.lblHydroAgency.isHidden = true
            self.lblHydroUnitsUsed.isHidden = true

        }
        
        if let hydObj = DataRepository.getInstance().getHydroBill(billId: self.currentBill!.billId)
        {
            self.lbldetailBilltype.text = "YOUR HYDRO BILL"
            self.hideNumber.isHidden = true
            self.hideminsused.isHidden = true
            self.hidegbused.isHidden = true
            self.lblgbUsed.isHidden = true
            self.lblminsused.isHidden = true
            self.hideprovider.isHidden = true
            self.lbldetailBillProvider.text = hydObj.agencyName
            self.lblnumbe.text = String(hydObj.unitsUsed)
        }
        
        if let intObj = DataRepository.getInstance().getInternetBill(billId: self.currentBill!.billId)
        {
            self.lbldetailBilltype.text = "YOUR INTERNET BILL"
            self.hideNumber.isHidden = true
            self.hideminsused.isHidden = true
            self.hidegbused.isHidden = true
            self.lblgbUsed.isHidden = true
            self.lblminsused.isHidden = true
            self.hideprovider.isHidden = true
            self.lbldetailBillProvider.text = intObj.providerName
            self.lblnumbe.text = String(intObj.gbUsed)
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
