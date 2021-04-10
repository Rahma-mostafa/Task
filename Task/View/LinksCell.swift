//
//  LinksCell.swift
//  Task
//
//  Created by Macbook on 23/02/2021.
//

import UIKit

class LinksCell: UITableViewCell {

    @IBOutlet weak var linksLabel: UILabel!
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var serviceImageView: UIImageView!
    @IBOutlet weak var seviceLabel: UILabel!
    
    @IBOutlet weak var offerImage: UIImageView!
    
    @IBOutlet weak var offerLbl: UILabel!
    
    @IBOutlet weak var codeImage: UIImageView!
    @IBOutlet weak var codeLbl: UILabel!
    
    @IBOutlet weak var digitalImge: UIImageView!
    @IBOutlet weak var storeImage: UIImageView!
    @IBOutlet weak var storeLbel: UILabel!
    @IBOutlet weak var digitalLbl: UILabel!
    
    @IBOutlet weak var deliveryImage: UIImageView!
    @IBOutlet weak var deliveryLbl: UILabel!
    
    @IBOutlet weak var coffeImage: UIImageView!
    @IBOutlet weak var coffeLbl: UILabel!
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLbl: UILabel!
    
    @IBOutlet weak var codeBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
