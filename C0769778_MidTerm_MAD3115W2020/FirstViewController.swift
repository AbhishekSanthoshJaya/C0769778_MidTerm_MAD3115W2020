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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        if (txtName.text == "Abhishek" && txtPassword.text == "something"){
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = sb.instantiateViewController(identifier: "SecondVC") as! SecondViewController
            navigationController?.pushViewController(secondVC, animated: true)
            print("login")
            else {
                
            }
        }
    }
}

