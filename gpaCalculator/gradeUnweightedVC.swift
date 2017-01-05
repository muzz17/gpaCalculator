//
//  gradeUnweightedVC.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 1/4/17.
//  Copyright © 2017 Muzzammil Ahmed. All rights reserved.
//

import UIKit

class gradeUnweightedVC: UIViewController, UITextFieldDelegate {
    
    // outlets
    
    @IBOutlet weak var earnedPoints: UITextField!
    @IBOutlet weak var totalPoints: UITextField!
    @IBOutlet weak var finalPoints: UITextField!
    @IBOutlet weak var targetGrade: UITextField!

    @IBOutlet weak var gradeNeeded: UILabel!
    
    @IBOutlet weak var unweightedScrollView: UIScrollView!
    
    
    // variables
    
    var earnedPointsNum: Double?
    var totalPointsNum: Double?
    var finalPointsNum: Double?
    var targetGradeNum: Double?
    var finalAnswer: Double?

    
    override func viewDidLoad() {
        
        gradeNeeded.text = ""
        
        super.viewDidLoad()
        
        earnedPoints.keyboardType = UIKeyboardType.decimalPad
        totalPoints.keyboardType = UIKeyboardType.decimalPad
        finalPoints.keyboardType = UIKeyboardType.decimalPad
        targetGrade.keyboardType = UIKeyboardType.decimalPad
        
        ///// dismiss keyboard code
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gradeUnweightedVC.dismissKeyboard)))
        
        ///// keyboard Scroll Code
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        
    }
    
    ////////// dismiss keyboard methods
    
    func dismissKeyboard() {
        earnedPoints.resignFirstResponder()
        totalPoints.resignFirstResponder()
        finalPoints.resignFirstResponder()
        targetGrade.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    ////////// keyboard Scroll methods
    
    func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.unweightedScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        self.unweightedScrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        self.unweightedScrollView.contentInset = contentInset
    }
    
    ////// other methods
    
    func calculateGradeNeeded() {
        finalAnswer = ((((targetGradeNum! / 100) * totalPointsNum!) - earnedPointsNum!) / finalPointsNum!) * 100
        finalAnswer = (((finalAnswer! * 100).rounded()) / 100) + 0.00
    }
    
    @IBAction func gradeNeeded(_ sender: Any) {
        dismissKeyboard()
        
        if (earnedPoints == nil || totalPoints == nil || finalPoints == nil || targetGrade.text == nil || earnedPoints.text == "" || totalPoints.text == "" || finalPoints.text == "" || targetGrade.text == "") {
            gradeNeeded.text = "Please fill out all fields"
        }
        else {
            earnedPointsNum = Double(earnedPoints.text!)
            totalPointsNum = Double(totalPoints.text!)
            finalPointsNum = Double(finalPoints.text!)
            targetGradeNum = Double(targetGrade.text!)
            calculateGradeNeeded()
            gradeNeeded.text = "You need a " + "\(finalAnswer!)" + "% on the final to get a " + targetGrade.text! + "% in the class"
        }
    }
    
    
}
