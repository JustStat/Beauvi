//
//  Place.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06.04.2018.
//

import UIKit

@objcMembers
class Place: NSObject {
    var title : String?
    var detail : String?
    var mainPhotoUrl : Photo?
    var gallery : [Photo]?
    var objectId : String?
    var placeType : String?
    var created: NSDate?
    var updated: NSDate?
}
