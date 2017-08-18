//
//  SearchViewController.swift
//  ProServices
//
//  Created by Rajesh Kannan M on 7/4/17.
//  Copyright © 2017 Rajesh Kannan. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = nil
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        tableView.reloadData()
    }
    //MARK:- Track Button Action
    
    
}

//MARK:- UITableViewDelegate and UITableViewDataSource
extension SearchViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let returnValue = 0
        
        return returnValue
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeCell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as? HomeTableViewCell
        homeCell?.onlineLabel.backgroundColor = UIColor(red: 10.0/255.0, green: 96.0/255.0, blue: 254.0/255.0, alpha: 1.0)
        homeCell?.trackButton.isHidden = false
        
          
                  
    return homeCell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
