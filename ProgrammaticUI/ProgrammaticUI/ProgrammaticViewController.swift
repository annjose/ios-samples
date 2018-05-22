//
//  ProgrammaticViewController.swift
//  ProgrammaticUI
//
//  Created by Jose, Ann Catherine on 5/21/18.
//  Copyright © 2018 Chiramattel. All rights reserved.
//

import UIKit

class ProgrammaticViewController: UIViewController {

    private var signInContentView: UIView!
    private var signInStackView: UIStackView!
    
    private var usernameTextField: UITextField!
    private var passwordTextField: UITextField!
    private var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // setupViewAndLayoutUsingConstraints()
        setupViewAndLayoutUsingStackView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupViewAndLayoutUsingConstraints() {
        
        self.view.backgroundColor = UIColor.white

        setupInnerViews()
    
        // set up content view
        signInContentView = UIView()
        signInContentView.backgroundColor = UIColor.lightGray
        signInContentView.addSubview(usernameTextField)
        signInContentView.addSubview(passwordTextField)
        signInContentView.addSubview(signInButton)
        self.view.addSubview(signInContentView)

        setupLayoutUsingConstraints()
    }
    
    private func setupInnerViews() {
        
        usernameTextField = UITextField()
        usernameTextField.placeholder = "Enter your username"
        usernameTextField.borderStyle = .roundedRect
        
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.borderStyle = .roundedRect
        
        signInButton = UIButton()
        signInButton.layer.cornerRadius = 5
        signInButton.setTitle("Sign In", for: .normal)
        
    }

    private func setupLayoutUsingConstraints() {
        
        signInContentView.translatesAutoresizingMaskIntoConstraints = false
        signInContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        signInContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        signInContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        signInContentView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true

        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.topAnchor.constraint(equalTo: signInContentView.topAnchor, constant: 20).isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: signInContentView.leftAnchor, constant: 40).isActive = true
        usernameTextField.rightAnchor.constraint(equalTo: signInContentView.rightAnchor, constant: -40).isActive = true
        usernameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: signInContentView.leftAnchor, constant: 40).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: signInContentView.rightAnchor, constant: -40).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50).isActive = true
        signInButton.leftAnchor.constraint(equalTo: signInContentView.leftAnchor, constant: 60).isActive = true
        signInButton.rightAnchor.constraint(equalTo: signInContentView.rightAnchor, constant: -60).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 40)

    }
    
    private func setupViewAndLayoutUsingStackView() {
        
        self.view.backgroundColor = UIColor.white

        setupInnerViews()

//        signInStackView = UIStackView()
//        signInStackView.backgroundColor = UIColor.lightGray
//        signInStackView.axis = .vertical
//        signInStackView.spacing = 20
//        signInStackView.alignment = .fill
//        signInStackView.distribution = .fillEqually
//        signInStackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        signInStackView = UIStackView()
        signInStackView.backgroundColor = UIColor.lightGray
        signInStackView.axis = .vertical
        signInStackView.distribution = .equalSpacing
        signInStackView.alignment = .leading
//        signInStackView.spacing = 20
//        signInStackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        signInStackView.addArrangedSubview(usernameTextField)
        signInStackView.addArrangedSubview(passwordTextField)
        signInStackView.addArrangedSubview(signInButton)
        
        self.view.addSubview(signInStackView)

        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

        signInStackView.translatesAutoresizingMaskIntoConstraints = false
        signInStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        signInStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        signInStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        signInStackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true


        // signInStackView.translatesAutoresizingMaskIntoConstraints = false
//        signInStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        signInStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
