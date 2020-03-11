//
//  BillTableViewCell.swift
//  C0769778_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class BillTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgBillicon: UIImageView!
    @IBOutlet weak var lblbillId: UILabel!
    @IBOutlet weak var lblbillDate: UILabel!
    @IBOutlet weak var lblAgency: UILabel!
    @IBOutlet weak var lblUsage: UILabel!
    @IBOutlet weak var billAmount: UILabel!
    
    func setData(){
     
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
