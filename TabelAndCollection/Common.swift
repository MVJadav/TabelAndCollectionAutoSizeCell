//
//  Common.swift
//  TabelAndCollection
//
//  Created by Mehul Jadav on 13/05/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import UIKit

class Common {
    
    public static let `default` = Common()
    
    func addshadow(View:UIView,shadowRadius:CGFloat? = 0,shadowColor:UIColor? = UIColor.darkGray,shadowOpacity:Float? = 0,borderWidth:CGFloat? = 0,borderColor:UIColor? = UIColor.clear,cornerRadius:CGFloat? = 0, shadowOffset:CGSize? = CGSize.zero, IsMaskToBounds:Bool = false) {
        
        View.layer.shadowRadius = shadowRadius!;
        View.layer.shadowColor = shadowColor?.cgColor;
        View.layer.shadowOffset = shadowOffset!
        View.layer.shadowOpacity = shadowOpacity!;
        View.layer.borderWidth = borderWidth!;
        View.layer.borderColor = borderColor?.cgColor;
        View.layer.cornerRadius = cornerRadius!;
        View.layer.masksToBounds = IsMaskToBounds
    }
}
