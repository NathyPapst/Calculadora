//
//  View.swift
//  Calculadora
//
//  Created by Nathalia do Valle Papst on 06/01/22.
//

import UIKit

class View: UIView {
    var numbersLabel: UILabel = UILabel()
    var buttons: [UIButton] = []
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .black
        self.addSubview(setLabel())
        
        for i in 0 ..< 17 {
            self.buttons.append(setButtons())
            self.addSubview(buttons[i])
        }
        
        setButtonsLabel()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLabel() -> UILabel {
        numbersLabel.textColor = .white
        numbersLabel.font = numbersLabel.font.withSize(100)
        numbersLabel.textAlignment = .right
        numbersLabel.text = "0"
        
        return numbersLabel
    }
    
    func setButtons() -> UIButton {
        let button: UIButton = UIButton(type: .custom)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
            
        return button
    }
    
    func setButtonsLabel() {
        buttons[0].setTitle("AC", for: .normal)
        buttons[1].setTitle("=", for: .normal)
        buttons[2].setTitle("0", for: .normal)
        buttons[3].setTitle(".", for: .normal)
        buttons[4].setTitle("+", for: .normal)
        buttons[5].setTitle("1", for: .normal)
        buttons[6].setTitle("2", for: .normal)
        buttons[7].setTitle("3", for: .normal)
        buttons[8].setTitle("-", for: .normal)
        buttons[9].setTitle("4", for: .normal)
        buttons[10].setTitle("5", for: .normal)
        buttons[11].setTitle("6", for: .normal)
        buttons[12].setTitle("x", for: .normal)
        buttons[13].setTitle("7", for: .normal)
        buttons[14].setTitle("8", for: .normal)
        buttons[15].setTitle("9", for: .normal)
        buttons[16].setTitle("/", for: .normal)
    }
    
    func setConstraints() {
        numbersLabel.translatesAutoresizingMaskIntoConstraints = false
        numbersLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        numbersLabel.bottomAnchor.constraint(equalTo: self.centerYAnchor, constant: -100).isActive = true
        numbersLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        numbersLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        buttons[0].translatesAutoresizingMaskIntoConstraints = false
        buttons[0].topAnchor.constraint(equalTo: self.bottomAnchor, constant: -130).isActive = true
        buttons[0].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
        buttons[0].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[0].widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        buttons[1].translatesAutoresizingMaskIntoConstraints = false
        buttons[1].topAnchor.constraint(equalTo: self.bottomAnchor, constant: -130).isActive = true
        buttons[1].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40).isActive = true
        buttons[1].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[1].widthAnchor.constraint(equalToConstant: 150).isActive = true

        buttons[2].translatesAutoresizingMaskIntoConstraints = false
        buttons[2].bottomAnchor.constraint(equalTo: buttons[0].topAnchor, constant: -15).isActive = true
        buttons[2].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
        buttons[2].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[2].widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        buttons[3].translatesAutoresizingMaskIntoConstraints = false
        buttons[3].bottomAnchor.constraint(equalTo: buttons[1].topAnchor, constant: -15).isActive = true
        buttons[3].leadingAnchor.constraint(equalTo: buttons[2].trailingAnchor, constant: 20).isActive = true
        buttons[3].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[3].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[4].translatesAutoresizingMaskIntoConstraints = false
        buttons[4].bottomAnchor.constraint(equalTo: buttons[1].topAnchor, constant: -15).isActive = true
        buttons[4].leadingAnchor.constraint(equalTo: buttons[3].trailingAnchor, constant: 30).isActive = true
        buttons[4].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[4].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[5].translatesAutoresizingMaskIntoConstraints = false
        buttons[5].bottomAnchor.constraint(equalTo: buttons[2].topAnchor, constant: -15).isActive = true
        buttons[5].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        buttons[5].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[5].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[6].translatesAutoresizingMaskIntoConstraints = false
        buttons[6].bottomAnchor.constraint(equalTo: buttons[2].topAnchor, constant: -15).isActive = true
        buttons[6].leadingAnchor.constraint(equalTo: buttons[5].trailingAnchor, constant: 30).isActive = true
        buttons[6].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[6].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[7].translatesAutoresizingMaskIntoConstraints = false
        buttons[7].bottomAnchor.constraint(equalTo: buttons[3].topAnchor, constant: -15).isActive = true
        buttons[7].leadingAnchor.constraint(equalTo: buttons[6].trailingAnchor, constant: 30).isActive = true
        buttons[7].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[7].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[8].translatesAutoresizingMaskIntoConstraints = false
        buttons[8].bottomAnchor.constraint(equalTo: buttons[3].topAnchor, constant: -15).isActive = true
        buttons[8].leadingAnchor.constraint(equalTo: buttons[7].trailingAnchor, constant: 30).isActive = true
        buttons[8].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[8].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[9].translatesAutoresizingMaskIntoConstraints = false
        buttons[9].bottomAnchor.constraint(equalTo: buttons[5].topAnchor, constant: -15).isActive = true
        buttons[9].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        buttons[9].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[9].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[10].translatesAutoresizingMaskIntoConstraints = false
        buttons[10].bottomAnchor.constraint(equalTo: buttons[5].topAnchor, constant: -15).isActive = true
        buttons[10].leadingAnchor.constraint(equalTo: buttons[5].trailingAnchor, constant: 30).isActive = true
        buttons[10].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[10].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[11].translatesAutoresizingMaskIntoConstraints = false
        buttons[11].bottomAnchor.constraint(equalTo: buttons[5].topAnchor, constant: -15).isActive = true
        buttons[11].leadingAnchor.constraint(equalTo: buttons[6].trailingAnchor, constant: 30).isActive = true
        buttons[11].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[11].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[12].translatesAutoresizingMaskIntoConstraints = false
        buttons[12].bottomAnchor.constraint(equalTo: buttons[5].topAnchor, constant: -15).isActive = true
        buttons[12].leadingAnchor.constraint(equalTo: buttons[7].trailingAnchor, constant: 30).isActive = true
        buttons[12].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[12].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[13].translatesAutoresizingMaskIntoConstraints = false
        buttons[13].bottomAnchor.constraint(equalTo: buttons[9].topAnchor, constant: -15).isActive = true
        buttons[13].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        buttons[13].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[13].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[14].translatesAutoresizingMaskIntoConstraints = false
        buttons[14].bottomAnchor.constraint(equalTo: buttons[9].topAnchor, constant: -15).isActive = true
        buttons[14].leadingAnchor.constraint(equalTo: buttons[5].trailingAnchor, constant: 30).isActive = true
        buttons[14].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[14].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[15].translatesAutoresizingMaskIntoConstraints = false
        buttons[15].bottomAnchor.constraint(equalTo: buttons[9].topAnchor, constant: -15).isActive = true
        buttons[15].leadingAnchor.constraint(equalTo: buttons[6].trailingAnchor, constant: 30).isActive = true
        buttons[15].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[15].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttons[16].translatesAutoresizingMaskIntoConstraints = false
        buttons[16].bottomAnchor.constraint(equalTo: buttons[9].topAnchor, constant: -15).isActive = true
        buttons[16].leadingAnchor.constraint(equalTo: buttons[7].trailingAnchor, constant: 30).isActive = true
        buttons[16].heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttons[16].widthAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}
