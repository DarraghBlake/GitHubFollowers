//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Darragh Blake on 07/01/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
            case .success(let followers):
                print(followers)
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Error!", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)

    }

}
