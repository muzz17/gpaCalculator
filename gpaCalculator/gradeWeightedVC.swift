//
//  gradeWeightedVC.swift
//  gpaCalculator
//
//  Created by Muzzammil Ahmed on 1/4/17.
//  Copyright © 2017 Muzzammil Ahmed. All rights reserved.
//

import UIKit

class gradeWeightedVC: UIViewController, UITextFieldDelegate {
    
    // outlets
    
    @IBOutlet weak var weightedScrollView: UIScrollView!
    
    @IBOutlet weak var targetGrade: UITextField!
    
    @IBOutlet weak var finalMessage: UILabel!
    
    @IBOutlet weak var categoryOne: UITextField!
    @IBOutlet weak var categoryTwo: UITextField!
    @IBOutlet weak var categoryThree: UITextField!
    @IBOutlet weak var categoryFour: UITextField!
    @IBOutlet weak var categoryFive: UITextField!
    @IBOutlet weak var categorySix: UITextField!
    @IBOutlet weak var categorySeven: UITextField!
    @IBOutlet weak var categoryEight: UITextField!
    @IBOutlet weak var categoryNine: UITextField!
    @IBOutlet weak var categoryTen: UITextField!
    @IBOutlet weak var categoryEleven: UITextField!
    @IBOutlet weak var categoryTwelve: UITextField!
    
    @IBOutlet weak var gradeOne: UITextField!
    @IBOutlet weak var gradeTwo: UITextField!
    @IBOutlet weak var gradeThree: UITextField!
    @IBOutlet weak var gradeFour: UITextField!
    @IBOutlet weak var gradeFive: UITextField!
    @IBOutlet weak var gradeSix: UITextField!
    @IBOutlet weak var gradeSeven: UITextField!
    @IBOutlet weak var gradeEight: UITextField!
    @IBOutlet weak var gradeNine: UITextField!
    @IBOutlet weak var gradeTen: UITextField!
    @IBOutlet weak var gradeEleven: UITextField!
    @IBOutlet weak var gradeTwelve: UITextField!
    
    @IBOutlet weak var weightOne: UITextField!
    @IBOutlet weak var weightTwo: UITextField!
    @IBOutlet weak var weightThree: UITextField!
    @IBOutlet weak var weightFour: UITextField!
    @IBOutlet weak var weightFive: UITextField!
    @IBOutlet weak var weightSix: UITextField!
    @IBOutlet weak var weightSeven: UITextField!
    @IBOutlet weak var weightEight: UITextField!
    @IBOutlet weak var weightNine: UITextField!
    @IBOutlet weak var weightTen: UITextField!
    @IBOutlet weak var weightEleven: UITextField!
    @IBOutlet weak var weightTwelve: UITextField!
    
    // variables
    
    var category1 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category2 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category3 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category4 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category5 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category6 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category7 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category8 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category9 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category10 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category11 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    var category12 = category(grade: "", weight: "", gradeNum: 0.00, weightNum: 0.00, isValid: true)
    
    var currentPoints: Double?
    var finalWeight: Double?
    var targetGradeNum: Double?
    var finalAnswer: Double?
    var targetGradeValid: Bool?
    
    
    
    
    override func viewDidLoad() {
        
        self.categoryOne.delegate = self
        self.categoryTwo.delegate = self
        self.categoryThree.delegate = self
        self.categoryFour.delegate = self
        self.categoryFive.delegate = self
        self.categorySix.delegate = self
        self.categorySeven.delegate = self
        self.categoryEight.delegate = self
        self.categoryNine.delegate = self
        self.categoryTen.delegate = self
        self.categoryEleven.delegate = self
        self.categoryTwelve.delegate = self
        
        ///// keyboard Scroll Code
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        super.viewDidLoad()
        
        ///// dismiss keyboard code
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gradeWeightedVC.dismissKeyboard)))
        
    }
    
    ////////// keyboard Scroll methods
    
    func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.weightedScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        self.weightedScrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        self.weightedScrollView.contentInset = contentInset
    }
    
    ////////// dismiss keyboard methods
    
    func dismissKeyboard() {
        categoryOne.resignFirstResponder()
        categoryTwo.resignFirstResponder()
        categoryThree.resignFirstResponder()
        categoryFour.resignFirstResponder()
        categoryFive.resignFirstResponder()
        categorySix.resignFirstResponder()
        categorySeven.resignFirstResponder()
        categoryEight.resignFirstResponder()
        categoryNine.resignFirstResponder()
        categoryTen.resignFirstResponder()
        categoryEleven.resignFirstResponder()
        categoryTwelve.resignFirstResponder()
        
        gradeOne.resignFirstResponder()
        gradeTwo.resignFirstResponder()
        gradeThree.resignFirstResponder()
        gradeFour.resignFirstResponder()
        gradeFive.resignFirstResponder()
        gradeSix.resignFirstResponder()
        gradeSeven.resignFirstResponder()
        gradeEight.resignFirstResponder()
        gradeNine.resignFirstResponder()
        gradeTen.resignFirstResponder()
        gradeEleven.resignFirstResponder()
        gradeTwelve.resignFirstResponder()
        
        weightOne.resignFirstResponder()
        weightTwo.resignFirstResponder()
        weightThree.resignFirstResponder()
        weightFour.resignFirstResponder()
        weightFive.resignFirstResponder()
        weightSix.resignFirstResponder()
        weightSeven.resignFirstResponder()
        weightEight.resignFirstResponder()
        weightNine.resignFirstResponder()
        weightTen.resignFirstResponder()
        weightEleven.resignFirstResponder()
        weightTwelve.resignFirstResponder()
        
        targetGrade.resignFirstResponder()
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // other methods
    
    
    @IBAction func calcFinalGrade(_ sender: Any) {
        retriveData()
        
        calculateFinalGrade()
        
        if (!category1.isValid || !category2.isValid || !category3.isValid || !category4.isValid || !category5.isValid || !category6.isValid || !category7.isValid || !category8.isValid || !category9.isValid || !category10.isValid || !category11.isValid || !category12.isValid || !targetGradeValid!) {
            finalMessage.text = "Please fill all necessary fields"
        }
        else {
            finalMessage.text = "You need a " + "\(finalAnswer!)" + "% on the final to get a " + targetGrade.text! + "% in the class"
        }
    }
    
    func calculateFinalGrade() {
        
        currentPoints = category1.sumProduct + category2.sumProduct + category3.sumProduct + category4.sumProduct + category5.sumProduct + category6.sumProduct + category7.sumProduct + category8.sumProduct + category9.sumProduct + category10.sumProduct + category11.sumProduct + category12.sumProduct
        
        finalWeight = 1 - (category1.weightNum + category2.weightNum + category3.weightNum + category4.weightNum + category5.weightNum + category6.weightNum + category7.weightNum + category8.weightNum + category9.weightNum + category10.weightNum + category11.weightNum + category12.weightNum)
        
        if (targetGrade.text == "" || targetGrade == nil){
            targetGradeValid = false
        }
        else {
            targetGradeNum = Double(targetGrade.text!)
            finalAnswer = (targetGradeNum! - currentPoints!) / finalWeight!
            finalAnswer = (((finalAnswer! * 100).rounded()) / 100) + 0.00
            targetGradeValid = true
        }
        
    }
    
    func retriveData() {
        category1.grade = gradeOne.text!
        category1.weight = weightOne.text!
        if (category1.grade != "") {
            category1.gradeNum = Double(category1.grade)!
        }
        if (category1.weight != "") {
            category1.weightNum = Double(category1.weight)!
        }
        category1.sumProductCalc()
        category1.checkValid()
        
        category2.grade = gradeTwo.text!
        category2.weight = weightTwo.text!
        if (category2.grade != "") {
            category2.gradeNum = Double(category2.grade)!
        }
        if (category2.weight != "") {
            category2.weightNum = Double(category2.weight)!
        }
        category2.sumProductCalc()
        category2.checkValid()
        
        category3.grade = gradeThree.text!
        category3.weight = weightThree.text!
        if (category3.grade != "") {
            category3.gradeNum = Double(category3.grade)!
        }
        if (category3.weight != "") {
            category3.weightNum = Double(category3.weight)!
        }
        category3.sumProductCalc()
        category3.checkValid()
        
        category4.grade = gradeFour.text!
        category4.weight = weightFour.text!
        if (category4.grade != "") {
            category4.gradeNum = Double(category4.grade)!
        }
        if (category4.weight != "") {
            category4.weightNum = Double(category4.weight)!
        }
        category4.sumProductCalc()
        category4.checkValid()
        
        category5.grade = gradeFive.text!
        category5.weight = weightFive.text!
        if (category5.grade != "") {
            category5.gradeNum = Double(category5.grade)!
        }
        if (category5.weight != "") {
            category5.weightNum = Double(category5.weight)!
        }
        category5.sumProductCalc()
        category5.checkValid()
        
        category6.grade = gradeSix.text!
        category6.weight = weightSix.text!
        if (category6.grade != "") {
            category6.gradeNum = Double(category6.grade)!
        }
        if (category6.weight != "") {
            category6.weightNum = Double(category6.weight)!
        }
        category6.sumProductCalc()
        category6.checkValid()
        
        category7.grade = gradeSeven.text!
        category7.weight = weightSeven.text!
        if (category7.grade != "") {
            category7.gradeNum = Double(category7.grade)!
        }
        if (category7.weight != "") {
            category7.weightNum = Double(category7.weight)!
        }
        category7.sumProductCalc()
        category7.checkValid()
        
        category8.grade = gradeEight.text!
        category8.weight = weightEight.text!
        if (category8.grade != "") {
            category8.gradeNum = Double(category8.grade)!
        }
        if (category8.weight != "") {
            category8.weightNum = Double(category8.weight)!
        }
        category8.sumProductCalc()
        category8.checkValid()
        
        category9.grade = gradeNine.text!
        category9.weight = weightNine.text!
        if (category9.grade != "") {
            category9.gradeNum = Double(category9.grade)!
        }
        if (category9.weight != "") {
            category9.weightNum = Double(category9.weight)!
        }
        category9.sumProductCalc()
        category9.checkValid()
        
        category10.grade = gradeTen.text!
        category10.weight = weightTen.text!
        if (category10.grade != "") {
            category10.gradeNum = Double(category10.grade)!
        }
        if (category10.weight != "") {
            category10.weightNum = Double(category10.weight)!
        }
        category10.sumProductCalc()
        category10.checkValid()
        
        category11.grade = gradeEleven.text!
        category11.weight = weightEleven.text!
        if (category11.grade != "") {
            category11.gradeNum = Double(category11.grade)!
        }
        if (category11.weight != "") {
            category11.weightNum = Double(category11.weight)!
        }
        category11.sumProductCalc()
        category11.checkValid()
        
        category12.grade = gradeTwelve.text!
        category12.weight = weightTwelve.text!
        if (category12.grade != "") {
            category12.gradeNum = Double(category12.grade)!
        }
        if (category12.weight != "") {
            category12.weightNum = Double(category12.weight)!
        }
        category12.sumProductCalc()
        category12.checkValid()
    }

    
    
    
    
    
    
}
