//
//  CourseObject.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 12/30/16.
//  Copyright © 2016 Muzzammil Ahmed. All rights reserved.
//

//fileprivate var _imagePath: String
//fileprivate var _title: String
//
//var imagePath: String {
//    return _imagePath
//}
//
//var title: String {
//    return _title
//}
//
//init(imagePath: String, title: String) {
//    self._imagePath = imagePath
//    self._title = title
//}

import Foundation

class course {
    
    // private variables
    
    fileprivate var _gradeString: String = ""
    fileprivate var _grade: Double = 0.0
    fileprivate var _credit: Double = 0.0
    fileprivate var _gradePoints: Double = 0.0
    
    // get and set varables
    
    var gradeString: String {
        get {
            return _gradeString
        }
        set (newGradeString) {
            self._gradeString = newGradeString
        }
    }
    
    var grade: Double {
        get {
            return _grade
        }
        set (newGrade) {
            self._grade = newGrade
        }
    }
    
    var credit: Double {
        get {
            return _credit
        }
        set (newCredit) {
            self._credit = newCredit
        }
    }
    
    var gradePoints: Double {
        get {
            return _gradePoints
        }
        set (newGradePoints) {
            self._gradePoints = newGradePoints
        }
    }
    
    // initializer
    
    init(gradeString: String, grade: Double, credit: Double, gradePoints: Double){
        self._gradeString = gradeString
        self._grade = grade
        self._credit = credit
    }
    
    // functions
    
    func gradeStringToDouble() {
        if (gradeString == "A"){
            grade = 4.0
        }
        else if (gradeString == "A-"){
            grade = 3.7
        }
        else if (gradeString == "B+"){
            grade = 3.3
        }
        else if (gradeString == "B"){
            grade = 3.0
        }
        else if (gradeString == "B-"){
            grade = 2.7
        }
        else if (gradeString == "C+"){
            grade = 2.3
        }
        else if (gradeString == "C"){
            grade = 2.0
        }
        else if (gradeString == "C-"){
            grade = 1.7
        }
        else if (gradeString == "D+"){
            grade = 1.3
        }
        else if (gradeString == "D"){
            grade = 1.0
        }
        else if (gradeString == "E/F"){
            grade = 0.0
        }
        else {
            grade = 0.0
        }
    }
    
    
    
    
}
