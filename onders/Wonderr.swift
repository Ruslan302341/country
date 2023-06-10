//
//  Wonderr.swift
//  onders
//
//  Created by admin on 09.06.2023.
//

import Foundation
import SwiftyJSON
struct Wonder {
    var name = ""
    var region = ""
    var location = ""
    var flag = ""
    var picture = ""
    
    init(json: JSON) {
        if let temp = json["name"].string {
            name = temp
        }
        if let temp = json["region"].string {
            region = temp
        }
        if let temp = json["location"].string {
            location = temp
        }
        if let temp = json["flag"].string {
            flag = temp
        }
        if let temp = json["picture"].string {
            picture = temp
        }
    }
}
