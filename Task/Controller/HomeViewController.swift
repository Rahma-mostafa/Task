//
//  HomeViewController.swift
//  Task
//
//  Created by Macbook on 21/02/2021.
//

import UIKit

class HomeViewController: UIViewController {
    var hiddenNav: Bool = false
    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.hiddenNav = true
        setup()


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
        mainTableView.dataSource = self
        mainTableView.delegate = self
    }
   
    
    

   

}
extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = Bundle.main.loadNibNamed("ImageCell", owner: self, options: nil)?.first as! ImageCell
            cell.sliderImageView.image = UIImage(named: "Rectangle 28" )
            return cell
        }else if indexPath.section == 1{
            let cell = Bundle.main.loadNibNamed("LinksCell", owner: self, options: nil)?.first as! LinksCell
            cell.linksLabel.text = "روابط سريعة"
            cell.showLabel.text = "عرض الكل"
            cell.serviceImageView.image = UIImage(named: "Path 36907")
            cell.seviceLabel.text = "الاسر المنتجة"
            cell.offerImage.image = UIImage(named: "Path 36102")
            cell.offerLbl.text = "عروض و تخفيضات"
            cell.codeImage.image = UIImage(named: "Path 36135")
            cell.codeLbl.text = "اكواد الخصم"
            cell.codeBtn.tag = indexPath.row
            cell.codeBtn.addTarget(self, action: #selector(self.getCode), for: .touchUpInside)
            
            cell.digitalImge.image = UIImage(named: "Group 48113")
            cell.digitalLbl.text = "خدمات رقمية"
            cell.storeLbel.text = "متجر تطبيقكم"
            cell.storeImage.image = UIImage(named: "Group 37675")
            cell.deliveryLbl.text = "توصيل مجاني "
            cell.deliveryImage.image = UIImage(named: "Group 48127")
            cell.coffeImage.image = UIImage(named: "COFFEE")
            cell.coffeLbl.text = "مباشرين القهوة"
            cell.productImage.image = UIImage(named: "Group 48128")
            cell.productLbl.text = "منتجات مميزة"
            return cell
        }
        if indexPath.section == 2{
            let cell = Bundle.main.loadNibNamed("OrderCell", owner: self, options: nil)?.first as! OrderCell
            cell.pannerImage.image = UIImage(named: "Rectangle 28")
            cell.orderLbl.text = "اطلب اي شي"
            cell.marketLbl.text = "المسوق الشخصي يفزع لك في اي وقت"
            return cell

        }
        if indexPath.section == 3{
            let cell = Bundle.main.loadNibNamed("ShowCell", owner: self, options: nil)?.first as! ShowCell
            cell.allLbl.text = "جميع الاقسام "
            cell.showLbl.text = "عرض الكل"
            return cell
        }
        if indexPath.section == 4{
            let cell = Bundle.main.loadNibNamed("SectionsCell", owner: self, options: nil)?.first as! SectionsCell
            cell.sectionImage.image = UIImage(named: "Group 35151")
            cell.sectionName.text = "متاجر الالعاب"
            cell.descLbl.text = "نوصلك كل انواع الهدايا "
            cell.arrowImage.image = UIImage(named: "Path 3391")
            
            return cell

        }
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 4 {
            return 20
        }else{
            return 1
        }
    }
    @objc func getCode(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let scene = storyboard.instantiateViewController(identifier: "OfferViewController")
        navigationController?.pushViewController(scene, animated: true)

    }

    
    
}




extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            let color = UIColor.init(cgColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.4
            layer.shadowRadius = newValue
        }
    }
    
}

//
// View for UILabel Accessory
//
extension UIView {
    
    func rightValidAccessoryView() -> UIView {
        let imgView = UIImageView(image: UIImage(named: "check_valid"))
        imgView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        imgView.backgroundColor = UIColor.clear
        return imgView
    }
    
    func rightInValidAccessoryView() -> UIView {
        let imgView = UIImageView(image: UIImage(named: "check_invalid"))
        imgView.frame = CGRect(x: self.cornerRadius, y: self.cornerRadius, width: 20, height: 20)
        imgView.backgroundColor = UIColor.clear
        return imgView
    }
    
}
