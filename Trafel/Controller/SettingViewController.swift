//
//  SettingViewController.swift
//  Trafel
//
//  Created by Kittikawin Sontinarakul on 7/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//

import UIKit
import MBProgressHUD

class SettingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationbar()
    }
    
    private func setupNavigationbar() {
        self.title = "Setting"
    }
    
    @IBAction func logoutButtonPressed (_ sender: UIBarButtonItem){
        MBProgressHUD.showAdded(to: view, animated: true)
        delay(durationInSeconds: 0.5) {
            PresentaionManager.share.show(vc: .OnboardingViewController)
        }
    }
}
