//
//  AddNewBillViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController {
    var mobileBills = [Mobile]()
    var internetBills = [Internet]()
    var hydroBills = [Hydro]()
    
    @IBOutlet weak var txtBillId: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillType: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
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
