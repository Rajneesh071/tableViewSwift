//
//  contentManager.swift
//  tableView
//
//  Created by Rajneesh on 13/09/15.
//  Copyright (c) 2015 Rajneesh. All rights reserved.
//

import UIKit

class ContentManager: NSObject {
    
    func getDataToDisplay() -> NSMutableArray {
        
        //Hardcode data for now, we can make a webservice call here later.
        var items: [String] = ["Flash light","Sixty Five", "If you", "party","See You Again"]
        var detailText: [String] = ["Jessie J","Gentle Bones", "BIGBANG", "Girls' Generation","Wiz Khalifa"]
        
        
        var data = NSMutableArray.new()
        for i in 0...items.count-1 {
            var contentModelObj = ContentModel .new()
            contentModelObj.itemName = items[i]
            contentModelObj.itemDescription = detailText[i]
            contentModelObj.itemImage = items[i]
            data.addObject(contentModelObj)
        }
        return data
    }
    
}
