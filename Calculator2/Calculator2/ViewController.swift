//
//  ViewController.swift
//  Calculator2
//
//  Created by 유창선 on 11/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var newOperation = true // Bool에 대한 변수 선언
    
    func AddNumberToInput(number: String) {
        var textNumber = String(display.text!)
        
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        
        textNumber = textNumber + number
        display.text = textNumber
    }
    
    @IBAction func btn0(_ sender: UIButton) {
        AddNumberToInput(number: "0")
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        AddNumberToInput(number: "1")
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        AddNumberToInput(number: "2")
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        AddNumberToInput(number: "3")
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        AddNumberToInput(number: "4")
    }
    
    @IBAction func btn5(_ sender: UIButton) {
        AddNumberToInput(number: "5")
    }
    
    @IBAction func btn6(_ sender: UIButton) {
        AddNumberToInput(number: "6")
    }
    
    @IBAction func btn7(_ sender: UIButton) {
        AddNumberToInput(number: "7")
    }
    
    @IBAction func btn8(_ sender: UIButton) {
        AddNumberToInput(number: "8")
    }
    
    @IBAction func btn9(_ sender: UIButton) {
        AddNumberToInput(number: "9")
    }
    
    var op = "+"
    var number1 : Double?
    
    @IBAction func btnDot(_ sender: UIButton) {
        AddNumberToInput(number: ".")
    }
    
    @IBAction func btnMul(_ sender: UIButton) {
        op = "*"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    @IBAction func btnEqual(_ sender: UIButton) {
        let number2 = Double(display.text!)
        var results : Double?
        
        switch op {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case"-":
            results = number1! - number2!
        case"+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        
        display.text = String(results!)
        newOperation = true
    }
    
    
    @IBAction func btnDiv(_ sender: UIButton) {
        op = "/"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    @IBAction func btnSub(_ sender: UIButton) {
        op = "-"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    
    @IBAction func btnAdd(_ sender: UIButton) {
        op = "+"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    @IBAction func btnAc(_ sender: UIButton) {
        display.text = "0"
        newOperation = true
    }
    var boolian = true
    
    
    @IBAction func btnMinus(_ sender: UIButton) {
        
        let number = Double(display.text!)
        var remove : Double?
        remove = number! * -1
        display.text = String(remove!)
    }
    
    @IBAction func btnPercent(_ sender: UIButton) {
        let number1 = number1!/100.0
        display.text = String(number1)
        newOperation = true
    }
}

