//
//  SectionsCell.swift
//  Task
//
//  Created by Macbook on 24/02/2021.
//

import UIKit

class SectionsCell: UITableViewCell {

    @IBOutlet weak var sectionName: UILabel!
    @IBOutlet weak var sectionImage: UIImageView!
    
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var descLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
