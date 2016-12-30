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
    
    @IBOutlet weak var classTwoName: UITextField!
    @IBOutlet weak var classTwoGrade: UIPickerView!
    @IBOutlet weak var classTwoCredits: UIPickerView!
    
    @IBOutlet weak var classThreeName: UITextField!
    @IBOutlet weak var classThreeGrade: UIPickerView!
    @IBOutlet weak var classThreeCredits: UIPickerView!
    
    @IBOutlet weak var classFourName: UITextField!
    @IBOutlet weak var classFourGrade: UIPickerView!
    @IBOutlet weak var classFourCredits: UIPickerView!
    
    @IBOutlet weak var classFiveName: UITextField!
    @IBOutlet weak var classFiveGrade: UIPickerView!
    @IBOutlet weak var classFiveCredits: UIPickerView!
    
    @IBOutlet weak var classSixName: UITextField!
    @IBOutlet weak var classSixGrade: UIPickerView!
    @IBOutlet weak var classSixCredits: UIPickerView!
    
    @IBOutlet weak var classSevenName: UITextField!
    @IBOutlet weak var classSevenGrade: UIPickerView!
    @IBOutlet weak var classSevenCredits: UIPickerView!
    
    @IBOutlet weak var classEightName: UITextField!
    @IBOutlet weak var classEightGrade: UIPickerView!
    @IBOutlet weak var classEightCredits: UIPickerView!
    
    @IBOutlet weak var classNineName: UITextField!
    @IBOutlet weak var classNineGrade: UIPickerView!
    @IBOutlet weak var classNineCredits: UIPickerView!
    
    @IBOutlet weak var classTenName: UITextField!
    @IBOutlet weak var classTenGrade: UIPickerView!
    @IBOutlet weak var classTenCredits: UIPickerView!
    
    
    
    
    let numClasses = ["Number of Classes", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    let grades = ["Grade", "A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "E/F"]
    let credits = ["Credit Hours", "0.5", "1.0", "1.5", "2.0", "2.5", "3.0", "3.5", "4.0", "4.5", "5.0", "5.5", "6.0", "6.5", "7.0", "7.5", "8.0"]
    
    var course1 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course2 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course3 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course4 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course5 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course6 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course7 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course8 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course9 = course(gradeString: "", grade: 0.0, credit: 0.0)
    var course10 = course(gradeString: "", grade: 0.0, credit: 0.0)
    
    

    override func viewDidLoad() {
        
        self.numClassesPicker.delegate = self
        self.numClassesPicker.dataSource = self
        
        self.classOneGrade.delegate = self
        self.classOneGrade.dataSource = self
        self.classOneCredits.delegate = self
        self.classOneCredits.dataSource = self
        
        GPA.text = "\(course1.grade * course1.credit)"
        
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
            course1.gradeString = grades[row]
            course1.gradeStringToDouble()
            GPA.text = "\(course1.grade * course1.credit)"
        } else if (classOneCredits == pickerView){
            if (row == 0){
                course1.credit = 0.0
            }
            else {
                course1.credit = Double(credits[row])!
            }
            GPA.text = "\(course1.grade * course1.credit)"
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
    
    }

