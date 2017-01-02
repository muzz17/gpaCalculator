//
//  gradeKnownVC.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 1/1/17.
//  Copyright © 2017 Muzzammil Ahmed. All rights reserved.
//

import UIKit

class gradeKnownVC: UIViewController, UITextFieldDelegate {
    
    // outlets
    
    @IBOutlet weak var currentGrade: UITextField!
    @IBOutlet weak var finalWeight: UITextField!
    @IBOutlet weak var targetGrade: UITextField!
    
    @IBOutlet weak var gradeNeeded: UILabel!
    
    
    // variables
    
    var currentGradeNum: Double?
    var finalWeightNum: Double?
    var targetGradeNum: Double?
    var otherWeights: Double!
    var finalAnswer: Double?

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        currentGrade.keyboardType = UIKeyboardType.decimalPad
        finalWeight.keyboardType = UIKeyboardType.decimalPad
        targetGrade.keyboardType = UIKeyboardType.decimalPad
        
        ///// dismiss keyboard code
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gpaCalcVC.dismissKeyboard)))
        
    }
    
    ////////// dismiss keyboard methods
    
    func dismissKeyboard() {
        currentGrade.resignFirstResponder()
        finalWeight.resignFirstResponder()
        targetGrade.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    ////// other methods
    
    func calculateGradeNeeded() {
        otherWeights = (100 - finalWeightNum!)/100
        finalAnswer = (targetGradeNum! - (currentGradeNum! * otherWeights)) / (finalWeightNum! / 100)
    }
    
    @IBAction func gradeNeeded(_ sender: Any) {
        dismissKeyboard()
        
        if (currentGrade == nil || finalWeight == nil || targetGrade == nil) {
            gradeNeeded.text = "Please fill out all fields"
        }
        else {
            currentGradeNum = Double(currentGrade.text!)
            finalWeightNum = Double(finalWeight.text!)
            targetGradeNum = Double(targetGrade.text!)
            calculateGradeNeeded()
            gradeNeeded.text = "You need " + "\(finalAnswer!)" + "% on the final to get a " + targetGrade.text! + "% in the class"
        }

    }
    
    
}
