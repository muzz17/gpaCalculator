//
//  ViewController.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 12/22/16.
//  Copyright © 2016 Muzzammil Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var numClassesPicker: UIPickerView!
    
    var numClasses = [Int]()
    var counter: Int = 0
    var counter2: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initNumClassArray()
        
        self.numClassesPicker.delegate = self
        self.numClassesPicker.dataSource = self
        
    }
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numClasses.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    private func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> Int?{
        return numClasses[row]
    }
    
    func initNumClassArray(){
        
        while counter < 11 {
            numClasses.insert(counter2, at: counter)
            
            counter = counter + 1
            counter2 = counter + 1
        }
        
    }
    
    
}

