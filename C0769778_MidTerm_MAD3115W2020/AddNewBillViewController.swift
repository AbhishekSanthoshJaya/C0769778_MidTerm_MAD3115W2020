//
//  AddNewBillViewController.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController
{
    
    var mobileBills = [Mobile]()
    var internetBills = [Internet]()
    var hydroBills = [Hydro]()
    
    @IBOutlet weak var txtBillId: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillType: UITextField!
    @IBOutlet weak var segmentBilltype: UISegmentedControl!
    
    var currentSlected: Int = 0
    var datePicker : UIDatePicker!
    var myPickerView : UIPickerView!
    var pickerDataBillType = ["Mobile" , "Internet" , "Hydro"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        // Do any additional setup after loading the view.
    }
//    func pickUp(_ textField : UITextField){
//
//    // UIPickerView
//    self.myPickerView = UIPickerView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
//    self.myPickerView.delegate = self
//    self.myPickerView.dataSource = self
//    self.myPickerView.backgroundColor = UIColor.white
//    textField.inputView = self.myPickerView
//
//    // ToolBar
//    let toolBar = UIToolbar()
//    toolBar.barStyle = .default
//    toolBar.isTranslucent = true
//    toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
//    toolBar.sizeToFit()
//
//    // Adding Button ToolBar
//        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewBillViewController.doneClick))
//    let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//    let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewBillViewController.cancelClick))
//    toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
//    toolBar.isUserInteractionEnabled = true
//    textField.inputAccessoryView = toolBar
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
