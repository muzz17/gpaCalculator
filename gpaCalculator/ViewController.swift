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
    
    @IBOutlet weak var GPA: UILabel!
    
    @IBOutlet weak var classOneGrade: UIPickerView!
    @IBOutlet weak var classOneCredits: UIPickerView!
    
    
    
    
    var numClasses = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    let grades = ["A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "F"]
    let credits = ["0.5", "1.0", "1.5", "2.0", "2.5", "3.0", "3.5", "4.0", "4.5", "5.0", "5.5", "6.0", "6.5", "7.0", "7.5", "8.0"]

    var grade1: Double = 2.0
    var credit1: Double = 2.0
    
    

    override func viewDidLoad() {
        
        self.numClassesPicker.delegate = self
        self.numClassesPicker.dataSource = self
        
        self.classOneGrade.delegate = self
        self.classOneGrade.dataSource = self
        self.classOneCredits.delegate = self
        self.classOneCredits.dataSource = self
        
        super.viewDidLoad()
        
        GPA.text = "\(grade1 * credit1)"
        
    }
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (numClassesPicker == pickerView){
            return numClasses.count
        }
        else if(classOneGrade == pickerView){
            return grades.count
        }
        else {
            return credits.count
        }
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if (numClassesPicker == pickerView){
            return "\(numClasses[row])"
        }
        else if(classOneGrade == pickerView){
            return "\(grades[row])"
        } else {
            return "\(credits[row])"
        }
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if(classOneGrade == pickerView){
            if (row == 0) {
               grade1 = 1
            }
            else if (row == 1){
                grade1 = 2
            }
            else {
                grade1 = 3
            }
        } else if (classOneCredits == pickerView){
            credit1 = Double(credits[row])!
        }
    }
    
    }

