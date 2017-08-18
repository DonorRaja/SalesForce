//
//  HomeViewController.swift
//  ProServices
//
//  Created by Rajesh Kannan M on 7/4/17.
//  Copyright © 2017 Rajesh Kannan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK:- outlets
    @IBOutlet weak var newOrderButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var policyNoLabel: UILabel!
    @IBOutlet weak var serviceAddressLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    //MARK:- Variables
    var imageArray = ["1","2","3","4"]
    
    //MARK:- view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = nil
        // Do any additional setup after loading the view.
        self.scrollView.delegate = self
        self.scrollView.isPagingEnabled = true
        for i in 0..<imageArray.count{
            let scrollImage = UIImageView()
            scrollImage.frame = CGRect(x: scrollView.frame.size.width * CGFloat(i), y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height)
            scrollImage.image = UIImage(named:imageArray[i])
            scrollView.contentSize.width = scrollView.frame.size.width * (CGFloat(i + 1))
            scrollView.addSubview(scrollImage)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createNewOrderAction(_ sender: UIButton) {
       
    }
    
    
    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
    
    @IBAction func pageControlAction(_ sender: UIPageControl) {
        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }
    
    
}

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x
        let width = scrollView.frame.size.width
        self.pageControl.currentPage = Int(x/width)
    }
}
