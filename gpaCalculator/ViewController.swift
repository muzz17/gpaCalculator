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
    
    @IBOutlet weak var classOneName: UITextField!
    @IBOutlet weak var classOneGrade: UIPickerView!
    @IBOutlet weak var classOneCredits: UIPickerView!
    
    
    
    
    var numClasses = ["Number of Classes", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    let grades = ["Grade", "A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "E/F"]
    let credits = ["Credit Hours", "0.5", "1.0", "1.5", "2.0", "2.5", "3.0", "3.5", "4.0", "4.5", "5.0", "5.5", "6.0", "6.5", "7.0", "7.5", "8.0"]

    var grade1String: String = ""
    var grade1: Double = 0.0
    var credit1: Double = 0.0
    
    

    override func viewDidLoad() {
        
        self.numClassesPicker.delegate = self
        self.numClassesPicker.dataSource = self
        
        self.classOneGrade.delegate = self
        self.classOneGrade.dataSource = self
        self.classOneCredits.delegate = self
        self.classOneCredits.dataSource = self
        
        //GPA.text = "\(grade1 * credit1)"
        
        super.viewDidLoad()
        
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
    
    // retrieving data from the selected row in picker view
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if(classOneGrade == pickerView){
            grade1String = grades[row]
            convertGradeToDouble()
            GPA.text = "\(grade1 * credit1)"
        } else if (classOneCredits == pickerView){
            if (row == 0){
                credit1 = 0.0
            }
            else {
                credit1 = Double(credits[row])!
            }
            GPA.text = "\(grade1 * credit1)"
        }
        else if (numClassesPicker == pickerView){
            if (row == 0){
                classOneName.isHidden = true
                classOneGrade.isHidden = true
                classOneCredits.isHidden = true
            }
            else {
                classOneName.isHidden = false
                classOneGrade.isHidden = false
                classOneCredits.isHidden = false
            }
        }
    }
    
    func convertGradeToDouble() {
        if (grade1String == "A"){
            grade1 = 4.0
        }
        else if (grade1String == "A-"){
            grade1 = 3.7
        }
        else if (grade1String == "B+"){
            grade1 = 3.3
        }
        else if (grade1String == "B"){
            grade1 = 3.0
        }
        else if (grade1String == "B-"){
            grade1 = 2.7
        }
        else if (grade1String == "C+"){
            grade1 = 2.3
        }
        else if (grade1String == "C"){
            grade1 = 2.0
        }
        else if (grade1String == "C-"){
            grade1 = 1.7
        }
        else if (grade1String == "D+"){
            grade1 = 1.3
        }
        else if (grade1String == "D"){
            grade1 = 1.0
        }
        else if (grade1String == "E/F"){
            grade1 = 0.0
        }
        else {
            grade1 = 0.0
        }
    }
    
    }

