//
//  ViewController.swift
//  UITextFieldWithLine
//
//  Created by GIS on 6/24/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        
    }

    func setUpView() {
        
        mainView = MainView()
        
        self.view.addSubview(mainView)
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true;
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true;
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true;
        
    }

}

