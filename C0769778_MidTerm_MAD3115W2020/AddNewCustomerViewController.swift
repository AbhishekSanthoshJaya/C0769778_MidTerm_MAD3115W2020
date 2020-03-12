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
    
    @IBOutlet weak var dtPickerDOB: UIDatePicker!
    @IBOutlet weak var txtNewCustomerDoB: UITextField!
    @IBOutlet weak var txtNewCustomerLocation: UITextField!
    @IBAction func btnAddNewCustomer(_ sender: Any) {
        let txtNumber = txtNewCustomerNumber.text!
        let txtmail  = txtNewCustomerEmail.text!
        
        if(txtNewCustomerId.text == "" || txtNewCustomerUserName.text == "" || txtNewCustomerPassword.text == "")
        {
            let alertController = UIAlertController(title:"Error", message: "Invalid entry, fields left blank", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if(Validations.email(email: txtmail) == false && Validations.mobileNumber(number: txtNumber) == false)
        {
            let alertController = UIAlertController(title:"Error", message: "Invalid email ID and phone number", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if(Validations.email(email: txtmail) == false)
            {
                let alertController = UIAlertController(title:"Error", message: "Invalid email ID", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
                return
            }
        
        if(Validations.mobileNumber(number: txtNumber) == false)
        {
            let alertController = UIAlertController(title:"Error", message: "Invalid phone number", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
            return
        }
        let c = Customer(customerId: txtNewCustomerId.text!, name: txtNewCustomerName.text!, email: txtNewCustomerEmail.text!,userName: txtNewCustomerUserName.text!, password: txtNewCustomerPassword.text!,location: txtNewCustomerLocation.text!, dateOfBirth: txtNewCustomerDoB!.text!)
//        let txtNumber = txtNewCustomerNumber.text!
//        let txtEmail  = txtNewCustomerEmail.text!
//        var c: Customer?
//
//            do {
//            var c = try Customer(customerId: txtNewCustomerId.text!, name: txtNewCustomerName.text!, email: txtNewCustomerEmail.text!,userName: txtNewCustomerUserName.text!, password: txtNewCustomerPassword.text!)
//            }
//            catch CustomerErrors.invalidNumber(number: txtNumber){
//                let alertController = UIAlertController(title:"Error", message: "Invalid phone number", preferredStyle: .alert)
//                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
//                self.present(alertController, animated: true, completion: nil)
//                return
//            }
//            catch CustomerErrors.invalidEmail(email: txtEmail){
//                let alertController = UIAlertController(title:"Error", message: "Invalid Email Id", preferredStyle: .alert)
//                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
//                self.present(alertController, animated: true, completion: nil)
//                return
//            }
//            catch {
//                let alertController = UIAlertController(title:"Error", message: "Invalid number/email", preferredStyle: .alert)
//                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
//                self.present(alertController, animated: true, completion: nil)
//                return
//            }
            
        DataRepository.getInstance().addCustomer(customer: c)
        
        
        let alertController = UIAlertController(title: "Success", message: "Customer Added", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in self.dismissView()}))
        self.present(alertController, animated: true, completion: nil)
    }
        func dismissView()
        {

            navigationController?.popViewController(animated: true)
        }
        override func viewDidLoad() {
        super.viewDidLoad()
            self.title = "NEW CUSTOMER"
            self.txtNewCustomerDoB.setInputViewDatePicker(target: self, selector: #selector(tapDone))
    }
    
    @objc func tapDone() {
        if let datePicker = self.txtNewCustomerDoB.inputView as? UIDatePicker { // 2-1
            let dateformatter = DateFormatter() // 2-2
            dateformatter.dateStyle = .medium // 2-3
            self.txtNewCustomerDoB.text = dateformatter.string(from: datePicker.date) //2-4
        }
        self.txtNewCustomerDoB.resignFirstResponder() // 2-5
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



