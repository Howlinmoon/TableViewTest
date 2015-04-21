//
//  ViewController.swift
//  TableView Test
//
//  Created by jim Veneskey on 4/21/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let people = [
        ("Captain Kirk", "Star Trek"),
        ("Lt. Sulu", "Star Trek"),
        ("Esn. Chekov", "Star Trek"),
        ("Cmdr. Spock", "Star Trek"),
        ("Lt. Uhura", "Star Trek")
    ]

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
        return 1
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        
        var (personName, personShip) = people[indexPath.row]
        
        cell.textLabel?.text = personName
        
        return cell
        
        
    }
    

}

