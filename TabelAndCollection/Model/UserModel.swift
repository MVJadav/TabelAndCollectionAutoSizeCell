
//  Created by MVJadav.

import Foundation
import ObjectMapper

class UserModel: Mappable {

    lazy var userId             : CLong? = 0
    lazy var name               : String? = ""
    lazy var avatar             : String? = ""

    
    required init(){ }
    required init?(map: Map) { }
    
    func mapping(map: Map) {

        userId          <- map["user_id"]
        name            <- map["name"]
        avatar          <- map["avatar"]
    }
}

