//
//  ViewController.swift
//  TableViewHeader
//
//  Created by Jorge Mendoza on 12/4/20.
//  Copyright © 2020 Dynamite Apps LLC. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    var data = [["Luke Skywalker", "Han Solo", "Master Yoda", "Ben Kenobi", "Ray Palpatine", "Asoka Tano"], ["Dart Vader", "Boba Fet", "Emperor Palpatine", "Conde Duku", "Yango Fet"]]
    var titles = ["Rebels", "Empire"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data[section].count
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        titles
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        titles[section]
    }
}

