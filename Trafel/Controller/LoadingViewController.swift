//
//  LoadingViewController.swift
//  Trafel
//
//  Created by Kittikawin Sontinarakul on 7/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//
//

import UIKit

class LoadingViewController: UIViewController {
    
    private var isUserLogin: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.showInitialView()
        }
        
    }
    
    private func setupView() {
        view.backgroundColor = .orange
    }
    
    private func showInitialView() {
        
        //if user already login go to tab view page
        //if not login go to onboarding page
        
        if isUserLogin {
            let mainTabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MainTabBarController")
            
            let sceneDelegate = view.window?.windowScene?.delegate as! SceneDelegate
            let window = sceneDelegate.window
            
            window?.rootViewController = mainTabBarController
        } else {
            performSegue(withIdentifier: "showOnboarding", sender: nil)
        }
    }
}
