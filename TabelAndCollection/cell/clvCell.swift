//
//  clvCell.swift
//  TabelAndCollection
//
//  Created by Mehul Jadav on 13/05/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class clvCell: UICollectionViewCell {

    @IBOutlet weak var imgProfile : UIImageView!
    @IBOutlet weak var mainView : UIView!
    @IBOutlet weak var txtName : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imgProfile.layer.cornerRadius = imgProfile.frame.size.width/2
        self.imgProfile.clipsToBounds = true
        self.imgProfile.layer.borderWidth = 3
        self.imgProfile.layer.borderColor = UIColor.white.cgColor
        
        Common.default.addshadow(View: self.mainView, shadowRadius: 5.0, shadowColor: UIColor.lightGray, shadowOpacity: 1.0, borderWidth: 0.0, borderColor: UIColor.clear, cornerRadius : 3.0 , shadowOffset: CGSize(width: 1.0, height: 1.0))
    }

}
