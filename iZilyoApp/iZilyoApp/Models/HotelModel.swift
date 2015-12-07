//
//  HotelModel.swift
//  iZilyoApp
//
//  Created by Tran Trung Hieu on 12/5/15.
//  Copyright © 2015 3SI. All rights reserved.
//

import UIKit

class HotelModel: NSObject {
    var hotelID: Int?
    var hotelLocation : LocationModel
    let hotelAttr :AttributeModel
    var hotelPhotos: String?
    var hotelPrice: String?
    var picture: String?
    var price_range : String?
    var product_code: String?
    var public_name: String?
    var star : Int?
//    init(location: LocationModel, attr:AttributeModel) {
//          self.hotelLocation = location
//          self.hotelAttr = attr
//
//    }
    init(local:LocationModel, attr: AttributeModel){
        self.hotelLocation = local
        self.hotelAttr = attr
    }
    
}
