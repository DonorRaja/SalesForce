//
//  TabBarController.swift
//  ProServices
//
//  Created by Rajesh Kannan M on 7/4/17.
//  Copyright © 2017 Rajesh Kannan. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    //MARK:- Variables
    var CollectionButton:UIButton?
    //MARK:- view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        // Do any additional setup after loading the view.
        self.selectedIndex = 2
        self.tabBar.items?[2].image = UIImage(named: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
    
    // MARK: - Actions
    @objc private func collectionButtonAction(sender: UIButton) {
        self.selectedIndex = 2
    }
    

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    }
}
