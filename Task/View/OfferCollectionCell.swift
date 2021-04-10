//
//  OfferCollectionCell.swift
//  Task
//
//  Created by Macbook on 24/02/2021.
//

import UIKit

class OfferCollectionCell: UICollectionViewCell {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var percentLbl: UILabel!
    
    @IBOutlet weak var logo2Image: UIImageView!
    @IBOutlet weak var percent2Lbl: UILabel!
    @IBOutlet weak var shareImage: UIImageView!
    @IBOutlet weak var shareLbl: UILabel!
    
    @IBOutlet weak var copyImage: UIImageView!
    
    @IBOutlet weak var copyLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
