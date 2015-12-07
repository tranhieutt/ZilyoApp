//
//  CommonUtil.swift
//  iZilyoApp
//
//  Created by Tran Trung Hieu on 12/5/15.
//  Copyright © 2015 3SI. All rights reserved.
//

import Foundation

class CommonUtil {
    class var sharedInstance: CommonUtil {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: CommonUtil? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = CommonUtil()
        }
        return Static.instance!
    }


   internal func getInformationHotelByAddress(string :String) { 
        let string = string;
        ServiceManager.sharedInstance.getInformationOfItemVia(string) { (list) -> Void in
            let listHotel = list
            let lst_attr = listHotel["result"] as! NSArray
            
            var myArr1 = [NSMutableArray]()?
            lst_attr.enumerateObjectsUsingBlock({ object, index, stop in
                //your code
                let test = object as! NSDictionary
                 let local = test["latLng"] as! NSArray
                myArr1?.addObject(local)
            })
            
//            var hotel = lst_attr[0]["attr"]
//            var local = lst_attr[0]["latLng"] as! NSArray
        
            let hotelModel: HotelModel
            
//            hotelModel.hotelLocation.latitue = local[0] as! Double
//            hotelModel.hotelLocation.longitude = local[1]
            
            
            print(myArr1)
            
           
            
    
            
        }
    }
}

