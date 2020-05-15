//
//  ViewController.swift
//  TabelAndCollection
//
//  Created by Mehul Jadav on 13/05/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clvUserData : UICollectionView!
    let isIphone = (UIDevice.current.iPhone == true) ? true : false
    
    var userInfo : [UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isIphone == true {
            print("iPhone")
        } else {
            print("iPap")
        }
        
        self.clvUserData.register(UINib(nibName: "tblCell", bundle: nil), forCellWithReuseIdentifier: "tblCell")
        self.clvUserData.register(UINib(nibName: "clvCell", bundle: nil), forCellWithReuseIdentifier: "clvCell")
        self.getData()
        self.clvUserData.reloadData()
    }
    
    func getData() {
        
        let user1 : UserModel = UserModel()
        user1.name = "OG Mario"
        user1.avatar = "https://vignette.wikia.nocookie.net/characterprofile/images/7/75/Mario.png"
        self.userInfo.append(user1)
        
        let user2 : UserModel = UserModel()
        user2.name = "Raccoon Mario"
        user2.avatar = "https://vignette.wikia.nocookie.net/characterprofile/images/9/9a/Tanooki_mario.png"
        self.userInfo.append(user2)
        
        let user3 : UserModel = UserModel()
        user3.name = "Rainbow Mario"
        user3.avatar = "https://vignette.wikia.nocookie.net/characterprofile/images/d/d1/Invincible_Mario.png"
        self.userInfo.append(user3)
        
        let user4 : UserModel = UserModel()
        user4.name = " Cloud Mario"
        user4.avatar = "https://vignette.wikia.nocookie.net/characterprofile/images/8/83/1452500936178.png"
        self.userInfo.append(user4)
        
        let user5 : UserModel = UserModel()
        user5.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/8/87/SML2RabbitMario.png"
        user5.avatar    = "Rabbit Mario"
        self.userInfo.append(user5)

        let user6 : UserModel = UserModel()
        user6.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/2/27/250px-Dr_Mario_- _Dr_Mario_Miracle_Cure.png"
        user6.avatar    = "Doctor Mario"
        self.userInfo.append(user6)
        
        let user7 : UserModel = UserModel()
        user7.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/5/50/1452500917700.png"
        user7.avatar    = "Bee Mario"
        self.userInfo.append(user7)

        let user8 : UserModel = UserModel()
        user8.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/b/b4/Penguin_Mario.png"
        user8.avatar    = "Penguin Mario"
        self.userInfo.append(user8)

        let user9 : UserModel = UserModel()
        user9.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/5/55/Frog_mario.png"
        user9.avatar    = "Frog Mario"
        self.userInfo.append(user9)

        let user10 : UserModel = UserModel()
        user10.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/9/9d/860px- Squirrel_Mario_NSMBU.png"
        user10.avatar    = "Squirrel Mario"
        self.userInfo.append(user10)

        let user11 : UserModel = UserModel()
        user11.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/4/47/ShellMario.png"
        user11.avatar    = "Turtle Mario"
        self.userInfo.append(user11)

        let user12 : UserModel = UserModel()
        user12.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/3/32/684px- WingMarioSM64DS.png"
        user12.avatar    = "Flying Mario"
        self.userInfo.append(user12)

        let user13 : UserModel = UserModel()
        user13.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/2/23/Metal_Mario.png"
        user13.avatar    = "Metal Mario"
        self.userInfo.append(user13)

        let user14 : UserModel = UserModel()
        user14.name      = "https://vignette.wikia.nocookie.net/characterprofile/images/6/63/Ice_Mario_2.png"
        user14.avatar    = "Ice Mario"
        self.userInfo.append(user14)
        
        
    }
    
}



extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.userInfo.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if isIphone == true {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tblCell", for: indexPath) as! tblCell
            
            cell.txtName.text = self.userInfo[indexPath.row].name ?? ""
            cell.imgProfile.setImageWithURL(self.userInfo[indexPath.row].avatar ?? "", placeHolderImage:UIImage(named: "bridge"), activityIndicatorViewStyle:.gray)
            
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "clvCell", for: indexPath) as! clvCell
            
            cell.txtName.text = self.userInfo[indexPath.row].name ?? ""
            cell.imgProfile.setImageWithURL(self.userInfo[indexPath.row].avatar ?? "", placeHolderImage:UIImage(named: "bridge"), activityIndicatorViewStyle:.gray)
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt  indexPath: IndexPath) -> CGSize {
       
        if (isIphone == true) {
            let cellWidth = (collectionView.bounds.width)
            return CGSize(width: cellWidth, height: 120)
        } else {
            let cellWidth = (collectionView.bounds.width - 30)/3
            return CGSize(width: cellWidth, height: cellWidth)
        }
    }
}


extension UIView {
    
    /// EZSwiftExtensions
    @objc public var size: CGSize {
        get {
            return self.frame.size
        } set(value) {
            self.frame = CGRect(origin: self.frame.origin, size: value)
        }
    }
    
}

extension UIDevice {
    var iPhone: Bool {
        return UIDevice().userInterfaceIdiom == .phone
    }
    enum ScreenType: String {
        case iPhone4
        case iPhone5
        case iPhone678
        case iPhonePlus
        case iPhoneX
        case iPhoneXSMax
        case iPhoneXR
        case iPadPro
        case unknown
    }
    var screenType: ScreenType {
        guard iPhone else { return .unknown }
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4
        case 1136:
            return .iPhone5
        case 1334:
            print("iPhone 6/6S/7/8")
            return .iPhone678
        case 1920, 2208:
            print("iPhone 6+/6S+/7+/8+")
            return .iPhonePlus
        case 2436:
            print("iPhone X, XS")
            return .iPhoneX
        case 2688:
            print("iPhone XS Max")
            return .iPhoneXSMax
        case 1792:
            print("iPhone XR")
            return .iPhoneXR
        case 2732.0:
            print("iPad Pro")
            return .iPadPro
        default:
            return .unknown
        }
    }
}
