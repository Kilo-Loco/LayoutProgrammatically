//
//  ProgrammaticallyVC.swift
//  LayoutProgrammatically
//
//  Created by Kyle Lee on 4/30/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

class ProgrammaticallyVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }
    
    func setUI() {
        
        let screenSize = UIScreen.main.bounds
        
        let navView = UIView()
        navView.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: 64)
        navView.backgroundColor = UIColor.init(red: 126/255, green: 127/255, blue: 227/255, alpha: 1)
        view.addSubview(navView)
        
        let navLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        navLabel.center.x = navView.center.x
        navLabel.frame.origin.y = navView.frame.height - navLabel.frame.height
        navLabel.text = "Welcome"
        navLabel.textColor = .white
        navLabel.textAlignment = .center
        navView.addSubview(navLabel)
        
        let myImageView = UIImageView(frame: CGRect(x: 0, y: navView.frame.height + 40, width: 120, height: 120))
        myImageView.center.x = view.center.x
        myImageView.image = #imageLiteral(resourceName: "testImage")
        myImageView.contentMode = .scaleAspectFill
        view.addSubview(myImageView)
        
        let emailField = UITextField(frame: CGRect(x: 16, y: myImageView.frame.maxY + 30, width: screenSize.width - 32, height: 30))
        emailField.placeholder = "email"
        emailField.keyboardType = .emailAddress
        emailField.borderStyle = .roundedRect
        view.addSubview(emailField)
        
        let passwordField = UITextField(frame: CGRect(x: 16, y: emailField.frame.maxY + 20, width: screenSize.width - 32, height: 30))
        passwordField.placeholder = "password"
        passwordField.isSecureTextEntry = true
        passwordField.borderStyle = .roundedRect
        view.addSubview(passwordField)
        
        let button = UIButton(frame: CGRect(x: 0, y: passwordField.frame.maxY + 40, width: 100, height: 70))
        button.center.x = view.center.x
        button.backgroundColor = .purple
        button.setTitle("LOGIN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(onButtonTapped), for: .touchUpInside)
        view.addSubview(button)
        
    }
    
    
    func onButtonTapped() {
        print("PROGRAMMATICALLY MADE BUTTON. YAY!")
    }
    
    

}
