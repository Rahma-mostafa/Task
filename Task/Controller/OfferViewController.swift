//
//  OfferViewController.swift
//  Task
//
//  Created by Macbook on 24/02/2021.
//

import UIKit

class OfferViewController: UIViewController {
    var hiddenNav: Bool = false
    @IBOutlet weak var offerCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        setup()
        self.hiddenNav = true
        

    }
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           if self.hiddenNav {
               // Show the Navigation Bar
               self.navigationController?.setNavigationBarHidden(true, animated: false )
               self.navigationController?.navigationBar.shadowImage = UIImage()

           } else {
               self.navigationController?.setNavigationBarHidden(false, animated: false)
           }
    
        
       }

       override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
           //baseViewModel = nil
           if self.hiddenNav {
               // Show the Navigation Bar
               self.navigationController?.setNavigationBarHidden(true, animated: false)
               self.navigationController?.navigationBar.shadowImage = UIImage()

           } else {
               self.navigationController?.setNavigationBarHidden(false, animated: false)
           }
       }
    func setup(){
        self.offerCollectionView.register(UINib(nibName: "OfferCollectionCell", bundle: nil), forCellWithReuseIdentifier: "OfferCollectionCell")
        offerCollectionView.dataSource = self
        offerCollectionView.delegate = self
    }
    
    @IBAction func onBackTapped(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
extension OfferViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OfferCollectionCell", for: indexPath) as! OfferCollectionCell
        cell.logoImage.image = UIImage(named: "")
        cell.percentLbl.text = "50% كود خصم "
        cell.percent2Lbl.text = "T56S"
        cell.logo2Image.image = UIImage(named: "20")
        cell.shareImage.image = UIImage(named: "Group 37628")
        cell.shareLbl.text = "شارك الكود"
        cell.copyLbl.text = "انسخ الكود"
        cell.copyImage.image = UIImage(named: "25")
        return cell
    }
    
    
}
