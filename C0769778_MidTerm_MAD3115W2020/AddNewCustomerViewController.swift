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
    @IBOutlet weak var txtNewCustomerNumber: UITextField!
    @IBOutlet weak var txtNewCustomerPassword: UITextField!
    @IBOutlet weak var txtNewCustomerUserName: UITextField!
    
    @IBAction func btnAddNewCustomer(_ sender: Any) {
        if let txtmail = txtNewCustomerEmail.text {
        if(Validations.email(email: txtmail) == false)
            {
                let alertController = UIAlertController(title:"Error", message: "Invalid email ID", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
                return
            }
        }
        if let txtNumber = txtNewCustomerNumber.text {
            if(Validations.mobileNumber(number: txtNumber) == false){
                let alertController = UIAlertController(title:"Error", message: "Invalid phone number", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
                return
            }
        }
        var c = Customer(customerId: txtNewCustomerId.text!, name: txtNewCustomerName.text!, email: txtNewCustomerEmail.text!,userName: txtNewCustomerUserName.text!, password: txtNewCustomerPassword.text!)
        DataRepository.getInstance().addCustomer(customer: c)
        let alertController = UIAlertController(title: "Success", message: "Customer Added", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            self.dismissView()}))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func dismissView() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let customerListTableVC = sb.instantiateViewController(identifier: "customerListTableVC") as! CustomerListTableViewController
        navigationController?.pushViewController(customerListTableVC, animated: true)
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


