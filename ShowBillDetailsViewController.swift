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
    @IBOutlet weak var lblAllAmount: UILabel!
    @IBOutlet weak var tblBillDetails: UITableView!
    
    @IBOutlet weak var lblBackground: UILabel!
    override func viewDidLoad() {
    super.viewDidLoad()
        self.bills = customerBill!.getBills()
        self.title = "CUSTOMER BILLS"
        self.lblAllAmount.text = String(format:"$%.2f", (customerBill?.allBillsTotal())!)
        lblAllAmount.font = lblAllAmount.font.withSize(40.0)
        lblAllAmount.textColor = UIColor.white
        lblAllAmount.textAlignment = .center
        self.addNewBillButton()
        lblBackground.backgroundColor = UIColor .systemIndigo;
    }
    
    private func addNewBillButton()
    {
        let newCustomerButton = UIBarButtonItem(title: "New Bill", style: .plain, target: self, action: #selector(self.addNewBill))
        self.navigationItem.rightBarButtonItem = newCustomerButton
    }
    
    @objc func addNewBill()
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let addNewBillVC = sb.instantiateViewController(identifier: "addNewBillVC") as! AddNewBillViewController
        addNewBillVC.selectedCustomer = self.customerBill
        navigationController?.pushViewController(addNewBillVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tblBillDetails.reloadData()
        self.navigationItem.hidesBackButton = true
        addToCustomersButton()
    }
    override func viewDidAppear(_ animated: Bool) {
        self.tblBillDetails.reloadData()
    }
        public func addToCustomersButton()
        {
            let logOutButton = UIBarButtonItem(title: "Customers", style: .plain, target: self, action: #selector(self.backToCustomerList))
            self.navigationItem.leftBarButtonItem = logOutButton
        }
    
        @objc func backToCustomerList()
        {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let customerListTableVC = sb.instantiateViewController(identifier: "customerListTableVC") as! CustomerListTableViewController
navigationController?.pushViewController(customerListTableVC, animated: true)
        }

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillTableViewCell") as! BillTableViewCell
        let billList = bills[indexPath.row]
        if billList.billId.contains("MB"){
        cell.lblbillId?.text = billList.billId
        cell.lblbillDate?.text = billList.billDate.getFormattedDate()
        cell.imgBillicon.image = UIImage(named:"mobileicon")
        cell.billAmount.text = String(format:"$%.2f", billList.billCalculate())
        cell.backgroundColor = UIColor(displayP3Red: 0.98, green: 0.91, blue: 0.71, alpha: 1.0)
        }
        if billList.billId.contains("HY")
        {
        cell.lblbillId?.text = billList.billId
        cell.lblbillDate?.text = billList.billDate.getFormattedDate()
        cell.imgBillicon.image = UIImage(named:"hydroicon")
        cell.billAmount.text = String(format:"$%.2f", billList.billCalculate())
        cell.backgroundColor = UIColor(displayP3Red: 0.91, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        if billList.billId.contains("IN")
        {
        cell.lblbillId?.text = billList.billId
        cell.lblbillDate?.text = billList.billDate.getFormattedDate()
        cell.imgBillicon.image = UIImage(named:"interneticon")
        cell.billAmount.text = String(format:"$%.2f", billList.billCalculate())
        cell.backgroundColor = UIColor(displayP3Red: 0.9, green: 0.9, blue: 0.98, alpha: 1.0)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150.0)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let mobileBills = DataRepository.getInstance().getMobileBills()
//        let hydroBills = DataRepository.getInstance().getHydroBills()
//        let internetBills = DataRepository.getInstance().getInternetBills()
//        let selectedMobBill = mobileBills[indexPath.section]
//        let selectedHydBill = hydroBills[indexPath.section]
//        let selectedIntBill = internetBills[indexPath.section]
        
        let selectedBill = self.bills[indexPath.row]
        
        let sb = UIStoryboard(name:"Main", bundle: nil)
        let detailedBillVC = sb.instantiateViewController(identifier: "detailedBillVC") as DetailedBillViewController
          
//        detailedBillVC.currentMobileBill = selectedMobBill
//        detailedBillVC.currentHydroBill = selectedHydBill
//        detailedBillVC.currentInternetBill = selectedIntBill
          detailedBillVC.currentBill = selectedBill
            
self.navigationController?.pushViewController(detailedBillVC, animated: true)

    }
    //func tableViewfooter
     
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
