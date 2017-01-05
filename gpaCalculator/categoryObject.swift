//
//  categoryObject.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 1/4/17.
//  Copyright © 2017 Muzzammil Ahmed. All rights reserved.
//

import Foundation

class category {
    
    // private variables
    
    fileprivate var _grade: String = ""
    fileprivate var _weight: String = ""
    
    fileprivate var _gradeNum: Double = 0.0
    fileprivate var _weightNum: Double = 0.0
    fileprivate var _sumProduct: Double = 0.0
    
    fileprivate var _isValid: Bool = true
    
    // getter and setter methods
    
    var grade: String {
        get {
            return _grade
        }
        set (newGrade) {
            self._grade = newGrade
        }
    }
    
    var weight: String {
        get {
            return _weight
        }
        set (newWeight) {
            self._weight = newWeight
        }
    }
    
    var gradeNum: Double {
        get {
            return _gradeNum
        }
        set (newGradeNum) {
            self._gradeNum = newGradeNum
        }
    }
    
    var weightNum: Double {
        get {
            return _weightNum
        }
        set (newWeightNum) {
            self._weightNum = newWeightNum
        }
    }
    
    var sumProduct: Double {
        get {
            return _sumProduct
        }
        set (newSumProduct) {
            self._sumProduct = newSumProduct
        }
    }
    
    var isValid: Bool {
        get {
            return _isValid
        }
        set (newIsValid) {
            self._isValid = newIsValid
        }
    }
    
    // initializer
    
    init(grade: String, weight: String, isValid: Bool){
        self._grade = grade
        self._weight = weight
        self._isValid = isValid
    }
    
    // functions
    
    func checkValid() {
        if ((grade == "" && weight != "") || (grade != "" && weight == "")){
            self._isValid = false
        }
        else {
            self._isValid = true
        }
    }
    
    
    
    
}
