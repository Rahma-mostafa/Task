//
//  OrderCell.swift
//  Task
//
//  Created by Macbook on 23/02/2021.
//

import UIKit

class OrderCell: UITableViewCell {

    @IBOutlet weak var pannerImage: UIImageView!
    @IBOutlet weak var orderLbl: UILabel!
    @IBOutlet weak var marketLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func onOrderBtnTapped(_ sender: Any) {
    }
    
   
    
}
