//
//  ImageCell.swift
//  Task
//
//  Created by Macbook on 23/02/2021.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var sliderImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
