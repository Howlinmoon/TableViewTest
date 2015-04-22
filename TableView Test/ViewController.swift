//
//  ViewController.swift
//  TableView Test
//
//  Created by jim Veneskey on 4/21/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // Section #0
    let people = [
        ("Captain Kirk", "Star Trek"),
        ("Lt. Sulu", "Star Trek"),
        ("Esn. Chekov", "Star Trek"),
        ("Cmdr. Spock", "Star Trek"),
        ("Lt. Uhura", "Star Trek")
    ]

    // Section #1
    let ships = [
        ("Serenity", "Firefly"),
        ("Enterprise", "Star Trek"),
        ("Eagle 7", "Space 1999"),
        ("White Star", "Babylon 5"),
        ("X-Wing", "Star Wars")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var howMany = 0
        if section == 0 {
            howMany = people.count
        }
        
        if section == 1 {
            howMany = ships.count
        }
        
        return howMany
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        if indexPath.section == 0 {
            var (personName, personShip) = people[indexPath.row]
            cell.textLabel?.text = personName
        }
        
        if indexPath.section == 1 {
            var (shipName, show) = ships[indexPath.row]
            cell.textLabel?.text = shipName
        }
        
        
        return cell
        
        
    }
    
    // Give each section a title
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Star Trek Officers"
        } else {
            return "Sci-Fi Ships"
        }
    }
    

}

