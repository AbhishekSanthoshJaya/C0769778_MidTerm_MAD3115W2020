//
//  ViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swchRememberMe: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ud = UserDefaults.standard
        let name = ud.string(forKey:"name")
        let password = ud.string(forKey: "password")
        if let nm = name
        {
            txtName.text = nm
        }
        if let pw  = password
        {
            txtPassword.text = pw
        }
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        if (txtName.text == "Abhishek" && txtPassword.text == "abhishek124"){
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = sb.instantiateViewController(identifier: "SecondVC") as! SecondViewController
            
            navigationController?.pushViewController(secondVC, animated: true)
            
            if swchRememberMe.isOn {
                let defaults = UserDefaults.standard
                let name = defaults.set(txtName.text, forKey: "name")
                let password = defaults.set(txtPassword.text, forKey: "password")
            }
        }
        else {
        let alertController = UIAlertController(title: "Error", message:
            "Incorrect Username or Password", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
            
        }
    }
}

