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
    var items: [String] = ["Flash light","Sixty Five", "If you", "party","See You Again"]
    var detailText: [String] = ["Jessie J","Gentle Bones", "BIGBANG", "Girls' Generation","Wiz Khalifa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell" )
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("c") as? UITableViewCell
        
        if cell == nil {
            
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle,
                reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = items[indexPath.row]
        cell!.detailTextLabel?.text = detailText[indexPath.row]
        cell!.imageView?.image = UIImage(named: "\(items[indexPath.row]).png")
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("\(indexPath.row)")
    }
}

