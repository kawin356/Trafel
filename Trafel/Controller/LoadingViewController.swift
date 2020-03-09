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
    
    private var isUserLogin: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delay(durationInSeconds: 2.0) {
            self.showInitialView()
        }
    }
    
    private func showInitialView() {
        if isUserLogin {
            PresentaionManager.share.show(vc: .MainTabBarController)
        } else {
            performSegue(withIdentifier: K.Segue.showOnBoarding, sender: nil)
        }
    }
}
