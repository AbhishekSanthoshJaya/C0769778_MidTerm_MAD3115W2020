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
//    var mobBills = [Mobile]()
//    var hydBills = [Hydro]()
//    var intBills = [Internet]()
    @IBOutlet weak var lblAllAmount: UILabel!
    @IBOutlet weak var tblBillDetails: UITableView!
    
    @IBOutlet weak var lblBackground: UILabel!
    override func viewDidLoad() {
    super.viewDidLoad()
        self.bills = customerBill!.getBills()
        self.title = "CUSTOMER BILLS"
        self.lblAllAmount.text = String(format:"$%.2f", (customerBill?.allBillsTotal())!)
        lblAllAmount.font = lblAllAmount.font.withSize(40.0)
        lblAllAmount.textAlignment = .center
        self.addNewBillButton()
        lblBackground.backgroundColor = UIColor .red;
        tblBillDetails.dataSource = self
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
        self.tblBillDetails.reloadData()
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
