//
//  MainView.swift
//  UITextFieldWithLine
//
//  Created by GIS on 6/24/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    private var tfUsername, tfPassword: UITextField!
    private var btnLogin: UIButton!
    
    override func layoutSubviews() {
        
        self.backgroundColor = .white
        setUpView()
        
    }
    
    func setUpView() {
        
        setUpTfUsername()
        setUpTfPassword()
        setUpBtnLogin()
        
    }
    
    func setUpTfUsername() {
        
        tfUsername = UITextField(frame: CGRect(x: 0, y: 0, width: self.frame.width - 50, height: 30))
        tfUsername.placeholder = "Username"
        setBottomLine(textField: tfUsername)
        
        self.addSubview(tfUsername)
        
        tfUsername.translatesAutoresizingMaskIntoConstraints = false
        tfUsername.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        tfUsername.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: self.frame.height / 2 - 85).isActive = true
        tfUsername.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 25).isActive = true
        
    }
    
    func setUpTfPassword() {
        
        tfPassword = UITextField(frame: CGRect(x: 0, y: 0, width: self.frame.width - 50, height: 30))
        tfPassword.placeholder = "Password"
        setBottomLine(textField: tfPassword)
        
        self.addSubview(tfPassword)
        
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        tfPassword.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        tfPassword.topAnchor.constraint(equalTo: tfUsername.bottomAnchor, constant: 50).isActive = true
        tfPassword.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -25).isActive = true
        
    }
    
    func setBottomLine(textField: UITextField) {
        
        //Create bottom line
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        //Remove border on text field
        textField.borderStyle = .none
        
        //Add the line to text field
        textField.layer.addSublayer(bottomLine)
        
    }
    
    func setUpBtnLogin() {
        
        btnLogin = UIButton(frame: CGRect(x: 0, y: 0, width: self.frame.width - 50, height: 50))
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.setTitleColor(.white, for: .normal)
        btnLogin.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        
        self.addSubview(btnLogin)
        
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        btnLogin.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        btnLogin.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 50).isActive = true
        btnLogin.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -25).isActive = true
        
    }
    
}
