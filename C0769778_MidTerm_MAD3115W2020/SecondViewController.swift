//
//  SecondViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblCustomerList: UILabel!
    lazy var customerList: [Customer] = []
    @IBOutlet weak var tblViewCustomerList: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addlogOutButton()
        self.addNewCustomerButton()
        self.navigationItem.hidesBackButton = true
        loadCustomers()
    }
    
    private func addlogOutButton()
    {
        let logOutButton = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(self.goBack))
        
        self.navigationItem.leftBarButtonItem = logOutButton
    }
    
    @objc func goBack()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    //BUTTON TO ADD NEW CUSTOMER
    private func addNewCustomerButton()
    {
        let newCustomerButton = UIBarButtonItem(title: "New Customer", style: .plain, target: self, action: #selector(self.addCustomer))
        
        self.navigationItem.rightBarButtonItem = newCustomerButton
    }
    
    @objc func addCustomer()
    {
        self.navigationController?.popViewController(animated: true)
        //Replace with proper code
    }
    
    //CUSTOMER OBJECTS
    func loadCustomers(){
        customerList.append(Customer(customerId: "A001", name: "Abhishek Santhosh Jaya", email: "abhisheksj35@gmail.com"))
        customerList.append(Customer(customerId: "A002", name: "Prakash Rana", email: "Rana@gmail.com"))
        customerList.append(Customer(customerId: "A003", name: "NotRaghav", email: "something@gmail.com"))
        
    }
    
}
   extension SecondViewController: UITableViewDataSource, UITableViewDelegate
   {
       func numberOfSections(in tableView: UITableView) -> Int
       {
           return 1
       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
       {
           return customerList.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
       {
           let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")
           
           let customer = customerList[indexPath.row]
           //cell?.textLabel?.text = customer.customerId
           cell?.textLabel?.text = customer.name
           //cell?.textLabel?.text = customer.email
           
           return cell!
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


