//
//  ViewController.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 12/22/16.
//  Copyright © 2016 Muzzammil Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // outlets

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
    
    // variables
    
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
    
    var numCourses: Double = 0.0
    
    

    override func viewDidLoad() {
        
        self.numClassesPicker.delegate = self
        self.numClassesPicker.dataSource = self
        
        self.classOneGrade.delegate = self
        self.classOneGrade.dataSource = self
        self.classOneCredits.delegate = self
        self.classOneCredits.dataSource = self
        
        self.classTwoGrade.delegate = self
        self.classTwoGrade.dataSource = self
        self.classTwoCredits.delegate = self
        self.classTwoCredits.dataSource = self
        
        self.classThreeGrade.delegate = self
        self.classThreeGrade.dataSource = self
        self.classThreeCredits.delegate = self
        self.classThreeCredits.dataSource = self
        
        self.classFourGrade.delegate = self
        self.classFourGrade.dataSource = self
        self.classFourCredits.delegate = self
        self.classFourCredits.dataSource = self
        
        self.classFiveGrade.delegate = self
        self.classFiveGrade.dataSource = self
        self.classFiveCredits.delegate = self
        self.classFiveCredits.dataSource = self
        
        self.classSixGrade.delegate = self
        self.classSixGrade.dataSource = self
        self.classSixCredits.delegate = self
        self.classSixCredits.dataSource = self
        
        self.classSevenGrade.delegate = self
        self.classSevenGrade.dataSource = self
        self.classSevenCredits.delegate = self
        self.classSevenCredits.dataSource = self
        
        self.classEightGrade.delegate = self
        self.classEightGrade.dataSource = self
        self.classEightCredits.delegate = self
        self.classEightCredits.dataSource = self
        
        self.classNineGrade.delegate = self
        self.classNineGrade.dataSource = self
        self.classNineCredits.delegate = self
        self.classNineCredits.dataSource = self
        
        self.classTenGrade.delegate = self
        self.classTenGrade.dataSource = self
        self.classTenCredits.delegate = self
        self.classTenCredits.dataSource = self

        
        GPA.text = "\(course1.grade * course1.credit)"
        
        super.viewDidLoad()
        
    }
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (classOneGrade == pickerView){
            return grades.count
        }
        else if (classOneCredits == pickerView) {
            return credits.count
        }
        else if (classTwoGrade == pickerView){
            return grades.count
        }
        else if (classTwoCredits == pickerView) {
            return credits.count
        }
        else if (classThreeGrade == pickerView){
            return grades.count
        }
        else if (classThreeCredits == pickerView) {
            return credits.count
        }
        else if (classFourGrade == pickerView){
            return grades.count
        }
        else if (classFourCredits == pickerView) {
            return credits.count
        }
        else if (classFiveGrade == pickerView){
            return grades.count
        }
        else if (classFiveCredits == pickerView) {
            return credits.count
        }
        else if (classSixGrade == pickerView){
            return grades.count
        }
        else if (classSixCredits == pickerView) {
            return credits.count
        }
        else if (classSevenGrade == pickerView){
            return grades.count
        }
        else if (classSevenCredits == pickerView) {
            return credits.count
        }
        else if (classEightGrade == pickerView){
            return grades.count
        }
        else if (classEightCredits == pickerView) {
            return credits.count
        }
        else if (classNineGrade == pickerView){
            return grades.count
        }
        else if (classNineCredits == pickerView) {
            return credits.count
        }
        else if (classTenGrade == pickerView){
            return grades.count
        }
        else if (classTenCredits == pickerView) {
            return credits.count
        }
        else {
            return numClasses.count
        }
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if (classOneGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classOneCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classTwoGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classTwoCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classThreeGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classThreeCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classFourGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classFourCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classFiveGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classFiveCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classSixGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classSixCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classSevenGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classSevenCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classEightGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classEightCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classNineGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classNineCredits == pickerView) {
            return "\(credits[row])"
        }
        else if (classTenGrade == pickerView){
            return "\(grades[row])"
        }
        else if (classTenCredits == pickerView) {
            return "\(credits[row])"
        }
        else {
            return "\(numClasses[row])"
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
                numCourses = 0.0
            }
            else {
                numCourses = Double(row)
            }
            
            if (row == 0){
                
                hideCourseOne()
                hideCourseTwo()
                hideCourseThree()
                hideCourseFour()
                hideCourseFive()
                hideCourseSix()
                hideCourseSeven()
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 1){
                
                showCourseOne()
                
                hideCourseTwo()
                hideCourseThree()
                hideCourseFour()
                hideCourseFive()
                hideCourseSix()
                hideCourseSeven()
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 2){
                
                showCourseOne()
                showCourseTwo()
                
                hideCourseThree()
                hideCourseFour()
                hideCourseFive()
                hideCourseSix()
                hideCourseSeven()
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 3){
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                
                hideCourseFour()
                hideCourseFive()
                hideCourseSix()
                hideCourseSeven()
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 4){
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                showCourseFour()
                
                hideCourseFive()
                hideCourseSix()
                hideCourseSeven()
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 5){
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                showCourseFour()
                showCourseFive()
                
                hideCourseSix()
                hideCourseSeven()
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 6){
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                showCourseFour()
                showCourseFive()
                showCourseSix()
                
                hideCourseSeven()
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 7){
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                showCourseFour()
                showCourseFive()
                showCourseSix()
                showCourseSeven()
                
                hideCourseEight()
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 8){
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                showCourseFour()
                showCourseFive()
                showCourseSix()
                showCourseSeven()
                showCourseEight()
                
                hideCourseNine()
                hideCourseTen()
            }
            else if (row == 9){
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                showCourseFour()
                showCourseFive()
                showCourseSix()
                showCourseSeven()
                showCourseEight()
                showCourseNine()
                
                hideCourseTen()
            }
            else {
                
                showCourseOne()
                showCourseTwo()
                showCourseThree()
                showCourseFour()
                showCourseFive()
                showCourseSix()
                showCourseSeven()
                showCourseEight()
                showCourseNine()
                showCourseTen()
            }
        }
    }
    
    func hideCourseOne(){
        classOneName.isHidden = true
        classOneGrade.isHidden = true
        classOneCredits.isHidden = true
    }
    func showCourseOne(){
        classOneName.isHidden = false
        classOneGrade.isHidden = false
        classOneCredits.isHidden = false
    }
    
    func hideCourseTwo(){
        classTwoName.isHidden = true
        classTwoGrade.isHidden = true
        classTwoCredits.isHidden = true
    }
    func showCourseTwo(){
        classTwoName.isHidden = false
        classTwoGrade.isHidden = false
        classTwoCredits.isHidden = false
    }
    
    func hideCourseThree(){
        classThreeName.isHidden = true
        classThreeGrade.isHidden = true
        classThreeCredits.isHidden = true
    }
    func showCourseThree(){
        classThreeName.isHidden = false
        classThreeGrade.isHidden = false
        classThreeCredits.isHidden = false
    }
    
    func hideCourseFour(){
        classFourName.isHidden = true
        classFourGrade.isHidden = true
        classFourCredits.isHidden = true
    }
    func showCourseFour(){
        classFourName.isHidden = false
        classFourGrade.isHidden = false
        classFourCredits.isHidden = false
    }
    
    func hideCourseFive(){
        classFiveName.isHidden = true
        classFiveGrade.isHidden = true
        classFiveCredits.isHidden = true
    }
    func showCourseFive(){
        classFiveName.isHidden = false
        classFiveGrade.isHidden = false
        classFiveCredits.isHidden = false
    }
    
    func hideCourseSix(){
        classSixName.isHidden = true
        classSixGrade.isHidden = true
        classSixCredits.isHidden = true
    }
    func showCourseSix(){
        classSixName.isHidden = false
        classSixGrade.isHidden = false
        classSixCredits.isHidden = false
    }
    
    func hideCourseSeven(){
        classSevenName.isHidden = true
        classSevenGrade.isHidden = true
        classSevenCredits.isHidden = true
    }
    func showCourseSeven(){
        classSevenName.isHidden = false
        classSevenGrade.isHidden = false
        classSevenCredits.isHidden = false
    }
    
    func hideCourseEight(){
        classEightName.isHidden = true
        classEightGrade.isHidden = true
        classEightCredits.isHidden = true
    }
    func showCourseEight(){
        classEightName.isHidden = false
        classEightGrade.isHidden = false
        classEightCredits.isHidden = false
    }
    
    func hideCourseNine(){
        classNineName.isHidden = true
        classNineGrade.isHidden = true
        classNineCredits.isHidden = true
    }
    func showCourseNine(){
        classNineName.isHidden = false
        classNineGrade.isHidden = false
        classNineCredits.isHidden = false
    }
    
    func hideCourseTen(){
        classTenName.isHidden = true
        classTenGrade.isHidden = true
        classTenCredits.isHidden = true
    }
    func showCourseTen(){
        classTenName.isHidden = false
        classTenGrade.isHidden = false
        classTenCredits.isHidden = false
    }
    
    }

