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
    
    @IBAction func calcGradeNeeded(_ sender: Any) {
        dismissKeyboard()
        
    }
    
    
}
