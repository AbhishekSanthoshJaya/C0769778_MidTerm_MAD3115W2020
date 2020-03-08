//
//  DetailedCustomerViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class DetailedCustomerViewController: UIViewController {
    var customers: Customer?
    @IBOutlet weak var lblCustomerId: UILabel!
    
    @IBOutlet weak var lblCustomerLocation: UILabel!
    @IBOutlet weak var lblCustomerUsername: UILabel!
    @IBOutlet weak var lblCustomerdob: UILabel!
    @IBOutlet weak var imgViewBills: UIImageView!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    @IBOutlet weak var lblCustomerName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblCustomerId.text = customers?.customerId
        self.lblCustomerName.text = customers?.name
        self.lblCustomerEmail.text = customers?.email
        self.lblCustomerLocation.text = customers?.location
        self.lblCustomerdob.text = customers?.dateOfBirth
        self.lblCustomerUsername.text = customers?.userName
        self.title = "DETAILED CUSTOMER VIEW"
        imgViewBills.isUserInteractionEnabled = true
        imgViewBills.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTap)))
    }
    
    @objc func imageTap() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let showBillDetailsVC = sb.instantiateViewController(identifier: "showBillDetailsVC") as! ShowBillDetailsViewController
        navigationController?.pushViewController(showBillDetailsVC, animated: true)
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedCustomerCell")
//        let objectDetailArray = [customers?.customerId, customers?.name, customers?.email]
//        let detailedCustomer = objectDetailArray[indexPath.row]
//        //cell?.textLabel?.text = customer.customerId
//        //cell?.textLabel?.text = detailedCustomer
//        //cell?.textLabel?.text = customer.email
//        return cell!
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
