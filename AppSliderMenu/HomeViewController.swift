//
//  HomeViewController.swift
//  AppSliderMenu
//
//  Created by nguyễn hữu đạt on 6/26/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

protocol HomeViewControllerDelegate: class {
    func onClickSlideMenu()
}

class HomeViewController: UIViewController, SlideMenuViewControllerDelegate {
    
    @IBOutlet weak var nameText: UILabel!
    
    weak var delegate: HomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func collBack(_ sender: UIBarButtonItem){
//        NotificationCenter.default.post(name: Notification.Name.init("isOpenSlideMenu"), object: nil)
        delegate?.onClickSlideMenu()
    }
    
    func sendData(text: String?) {
        nameText.text = text
        delegate?.onClickSlideMenu()
    }
}
