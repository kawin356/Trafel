//
//  LoginViewController.swift
//  Trafel
//
//  Created by Kittikawin Sontinarakul on 8/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordComfirmationTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    weak var delegate: OnboardingViewControllerDelegate?
    
    private var isSuccesfulLogin: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewFor(pageType: .login)
    }
    
    private enum PageType {
        case login
        case signup
    }
    
    private var currentPageType: PageType = .login {
        didSet {
            setupViewFor(pageType: currentPageType)
        }
    }
    
    private var errorMessage: String? {
        didSet {
            showErrorMessage(message: errorMessage)
        }
    }
    
    private func setupViewFor(pageType: PageType){
        errorMessage = nil
        passwordComfirmationTextfield.isHidden = pageType == .login
        signupButton.isHidden = pageType == .login
        loginButton.isHidden = pageType == .signup
        forgetPasswordButton.isHidden = pageType == .signup
    }
    
    private func showErrorMessage(message: String?){
        errorLabel.isHidden = message == nil
        errorLabel.text = message
    }
    
    @IBAction func segmentControlPressed(_ sender: UISegmentedControl) {
        currentPageType = sender.selectedSegmentIndex == 0 ? .login : .signup
    }
    
    
    @IBAction func forgetPasswordButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if isSuccesfulLogin {
            delegate?.showTabbarViewController()
        } else {
            errorMessage = "Your password is invalid. Please try again."
        }
    }
}
