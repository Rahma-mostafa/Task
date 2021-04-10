//
//  ShowCell.swift
//  Task
//
//  Created by Macbook on 23/02/2021.
//

import UIKit

class ShowCell: UITableViewCell {

    @IBOutlet weak var allLbl: UILabel!
    @IBOutlet weak var showLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
