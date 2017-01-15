//
//  aboutVC.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 1/11/17.
//  Copyright © 2017 Muzzammil Ahmed. All rights reserved.
//

import UIKit

class aboutVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // outlets
    
    @IBOutlet weak var gpaScaleTable: UITableView!
    
    // variables
    
    let gpaScaleArray = ["A = 4.0", "A- = 3.7", "B+ = 3.3", "B = 3.0", "B- = 2.7", "C+ = 2.3", "C = 2.0", "C- = 1.7", "D+ = 1.3", "D = 1.0", "E/F = 0.0"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gpaScaleTable.delegate = self
        self.gpaScaleTable.dataSource = self
        
        // sets background of tableview to different color than white default
        
        self.gpaScaleTable.backgroundColor = UIColor.clear
    }
    
    public func tableView(_ gpaScaleTable: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gpaScaleArray.count
    }
    
    public func tableView(_ gpaScaleTable: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = gpaScaleTable.dequeueReusableCell(withIdentifier: "gpaCell", for: indexPath)
        cell.textLabel?.text = gpaScaleArray[indexPath.row]
        
        return cell
    }
    
    func numberOfSections(in gpaScaleTable: UITableView) -> Int {
        return 1
    }
    
    
    
}
