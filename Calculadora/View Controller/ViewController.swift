//
//  ViewController.swift
//  Calculadora
//
//  Created by Nathalia do Valle Papst on 06/01/22.
//

import UIKit

class ViewController: UIViewController {
    let contentView: View = View()
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var operation: String = ""
    var result: Double = 0
    var dotPressed: Bool = false
    
    var labelValue: String = "" {
        didSet {
            contentView.numbersLabel.text = labelValue
        }
    }
    
    override func loadView() {
        super.loadView()
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.buttons[0].addTarget(self, action: #selector(eraseAll), for: .touchDown)
        contentView.buttons[1].addTarget(self, action: #selector(showResult), for: .touchDown)
        contentView.buttons[2].addTarget(self, action: #selector(showZero), for: .touchDown)
        contentView.buttons[3].addTarget(self, action: #selector(dot), for: .touchDown)
        contentView.buttons[4].addTarget(self, action: #selector(addition), for: .touchDown)
        contentView.buttons[5].addTarget(self, action: #selector(showOne), for: .touchDown)
        contentView.buttons[6].addTarget(self, action: #selector(showTwo), for: .touchDown)
        contentView.buttons[7].addTarget(self, action: #selector(showThree), for: .touchDown)
        contentView.buttons[8].addTarget(self, action: #selector(subtraction), for: .touchDown)
        contentView.buttons[9].addTarget(self, action: #selector(showFour), for: .touchDown)
        contentView.buttons[10].addTarget(self, action: #selector(showFive), for: .touchDown)
        contentView.buttons[11].addTarget(self, action: #selector(showSix), for: .touchDown)
        contentView.buttons[12].addTarget(self, action: #selector(multiplication), for: .touchDown)
        contentView.buttons[13].addTarget(self, action: #selector(showSeven), for: .touchDown)
        contentView.buttons[14].addTarget(self, action: #selector(showEight), for: .touchDown)
        contentView.buttons[15].addTarget(self, action: #selector(showNine), for: .touchDown)
        contentView.buttons[16].addTarget(self, action: #selector(division), for: .touchDown)
    }
    
    func showNumber(num: String) {
        if labelValue == String(result) {
            labelValue = "0"
            dotPressed = false
        }
        
        if labelValue != "0" {
            labelValue = labelValue + num
        }
        
        else {
            labelValue = num
        }
    }
    
    @objc func eraseAll() {
        labelValue = "0"
        dotPressed = false
    }
    
    @objc func showResult() {
        secondNumber = Double("\(labelValue )") ?? 0
        
        if operation == "+" {
            result = firstNumber + secondNumber
        }
        
        else if operation == "-" {
            result = firstNumber - secondNumber
        }
        
        else if operation == "x" {
            result = firstNumber * secondNumber
        }
        
        else if operation == "/" {
            result = firstNumber / secondNumber
        }
        
        labelValue = String(result)
    }
    
    @objc func showZero() {
        showNumber(num: "0")
    }
    
    @objc func dot() {
        labelValue = labelValue + "."
        
        if labelValue == String(result) {
            labelValue = "0"
            dotPressed = false
        }
        
        if dotPressed {
            labelValue = "Error"
            dotPressed = false
        }
        
        else {
            dotPressed = true
        }
    }
    
    @objc func addition() {
        firstNumber = Double("\(labelValue )") ?? 0
        labelValue = "0"
        operation = "+"
        dotPressed = false
    }
    
    @objc func showOne() {
        showNumber(num: "1")
    }
    
    @objc func showTwo() {
        showNumber(num: "2")
    }
    
    @objc func showThree() {
        showNumber(num: "3")
    }
    
    @objc func subtraction() {
        firstNumber = Double("\(labelValue )") ?? 0
        labelValue = "0"
        operation = "-"
        dotPressed = false
    }
    
    @objc func showFour() {
        showNumber(num: "4")
    }
    
    @objc func showFive() {
        showNumber(num: "5")
    }
    
    @objc func showSix() {
        showNumber(num: "6")
    }
    
    @objc func multiplication() {
        firstNumber = Double("\(labelValue )") ?? 0
        labelValue = "0"
        operation = "x"
        dotPressed = false
    }
    
    @objc func showSeven() {
        showNumber(num: "7")
    }
    
    @objc func showEight() {
        showNumber(num: "8")
    }
    
    @objc func showNine() {
        showNumber(num: "9")
    }
    
    @objc func division() {
        firstNumber = Double("\(labelValue )") ?? 0
        labelValue = "0"
        operation = "/"
        dotPressed = false
    }
}

