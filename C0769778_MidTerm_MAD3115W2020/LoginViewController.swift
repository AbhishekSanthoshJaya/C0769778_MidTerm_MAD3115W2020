//
//  ViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swchRememberMe: UISwitch!

    @IBAction func btnShowHidePW(_ sender: UIButton) {
        txtPassword.isSecureTextEntry.toggle()
    }
    @IBAction func btnSignup(_ sender: Any)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let addNewCustomerVC = sb.instantiateViewController(identifier: "AddNewCustomerVC") as! AddNewCustomerViewController
        navigationController?.pushViewController(addNewCustomerVC, animated: true)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        txtName.text = ""
        txtPassword.text = ""
        let ud = UserDefaults.standard
        let name = ud.string(forKey:"name")
        let password = ud.string(forKey: "password")
        self.navigationItem.hidesBackButton = true
        if let nm = name
            {
                txtName.text = nm
            }
        if let pw  = password
            {
                txtPassword.text = pw
            }
    }
    @IBAction func btnLogin(_ sender: Any)
    {
        
        if (txtName.text == "" || txtPassword.text == "")
            {
          let alertController = UIAlertController(title: "Error", message: "Username/Password cannot be left blank", preferredStyle: .alert)
          alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
          self.present(alertController, animated: true, completion: nil)
            }

        let customers = DataRepository.getInstance().dictionaryToArray()
        
        for i in customers
        {
            if (txtName.text == i.userName && txtPassword.text == i.password)
            {
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let customerListTableVC = sb.instantiateViewController(identifier: "customerListTableVC") as! CustomerListTableViewController
                navigationController?.pushViewController(customerListTableVC, animated: true)

                if swchRememberMe.isOn
                    {
                    let defaults = UserDefaults.standard
                        _ = defaults.set(txtName.text, forKey: "name")
                        _ = defaults.set(txtPassword.text, forKey: "password")
                    }
                    
                else{
                    UserDefaults.standard.removeObject(forKey: "name")
                    UserDefaults.standard.removeObject(forKey: "password")
                }
                return
            }
        }
                let alertController = UIAlertController(title: "Error", message: "Incorrect username/password", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
                      
    }
}
