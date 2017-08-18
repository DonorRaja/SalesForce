//
//  ProfileViewController.swift
//  ProServices
//
//  Created by Rajesh Kannan M on 7/4/17.
//  Copyright © 2017 Rajesh Kannan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    //MARK:- outlets
    @IBOutlet weak var gmalidAndCountry: UILabel!
    @IBOutlet weak var ProfileImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    //MARK:- view life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
         
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
