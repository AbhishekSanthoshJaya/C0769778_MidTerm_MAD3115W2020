//
//  ShowBillDetailsViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {
    var customerBill: Customer?
    var bills = [Bill]()
    @IBOutlet weak var tblBillDetails: UITableView!
    override func viewDidLoad() {
    super.viewDidLoad()
        self.bills = customerBill!.getBills()
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

extension ShowBillDetailsViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.bills.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "billDetail")
        let billList = bills[indexPath.row]
        cell?.textLabel?.text = billList.billId
        return cell!
    }
     
//     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//         let customers = DataRepository.getInstance().dictionaryToArray()
//         let selectedCustomer = customers[indexPath.row]
//
//         let sb = UIStoryboard(name: "Main", bundle: nil)
//         let detailedCustomerVC = sb.instantiateViewController(identifier: "detailedCustomerVC") as DetailedCustomerViewController
//         detailedCustomerVC.customers = selectedCustomer
//         self.navigationController?.pushViewController(detailedCustomerVC, animated: true)
//     }
 }
