//
//  ViewController.swift
//  tableView
//
//  Created by Rajneesh on 11/09/15.
//  Copyright (c) 2015 Rajneesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet
    var tableView: UITableView!
    let tableViewCellHeight:CGFloat = 80.0
    let tableViewCellIdentifier  = "cell"

    var dataToDisplay:NSMutableArray!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell" )
        
        var contentMgrObj = ContentManager.new()
        dataToDisplay = contentMgrObj.getDataToDisplay()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataToDisplay.count;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return tableViewCellHeight
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(self.tableViewCellIdentifier) as? UITableViewCell
        
        if cell == nil {
            
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle,
                reuseIdentifier: self.tableViewCellIdentifier)
        }
        var contentModelObj = dataToDisplay[indexPath.row] as! ContentModel
        
        cell!.textLabel?.text = contentModelObj.itemName
        cell!.detailTextLabel?.text = contentModelObj.itemDescription
        cell!.imageView?.image = UIImage(named: contentModelObj.itemImage)
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var contentModelObj = dataToDisplay[indexPath.row] as! ContentModel
        print("Name : \(contentModelObj.itemName) \nDescription : \(contentModelObj.itemDescription)")
    }
}

