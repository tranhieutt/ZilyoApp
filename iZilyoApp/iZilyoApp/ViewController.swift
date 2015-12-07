//
//  ViewController.swift
//  iZilyoApp
//
//  Created by Tran Trung Hieu on 12/2/15.
//  Copyright © 2015 3SI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let barCode = "823734014026"
       
        CommonUtil.sharedInstance.getInformationHotelByAddress(barCode)
//        ServiceManager.sharedInstance.getInformationOfItemVia(barCode) { (list) -> Void in
//            
////            let listTest = list
////            let product = listTest["product"]! as! NSDictionary
////            let review = product["picture"] as! String
////            let item = ItemReview.init()
////            let originURL = "http://www.goodfoods.reviews/site_media"
////            item.picture = originURL + review;
//            
//            
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

