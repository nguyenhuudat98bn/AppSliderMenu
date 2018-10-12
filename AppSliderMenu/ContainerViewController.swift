//
//  ViewController.swift
//  AppSliderMenu
//
//  Created by nguyễn hữu đạt on 6/26/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, HomeViewControllerDelegate {
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var coverButton: UIButton!
    var slideMenuViewController: SlideMenuViewController?
    var homeViewController: HomeViewController?
    
    var isOpenMenu: Bool = false{
        didSet {
            leading.constant = isOpenMenu ? 0 : -UIScreen.main.bounds.width * 2/3
            coverButton.isHidden = !isOpenMenu
            UIView.animate(withDuration: 0.35) {
                self.view.layoutIfNeeded()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        leading.constant = -UIScreen.main.bounds.width * 2/3
        homeViewController?.delegate = self
        slideMenuViewController?.delegate = homeViewController
        
//        NotificationCenter.default.addObserver(self, selector: #selector(onClickCoverButton(_:)), name: Notification.Name.init("isOpenSlideMenu"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    @IBAction func onClickCoverButton(_ sender: UIButton) {
        onClickSlideMenu()
    }
    
    func onClickSlideMenu() {
        isOpenMenu = !isOpenMenu
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier! {
        case "HomeViewController":
            if let navigation = segue.destination as? UINavigationController {
                homeViewController = navigation.topViewController as? HomeViewController
            }
        case "SlideMenuViewController":
            slideMenuViewController = segue.destination as? SlideMenuViewController
        default:
            break
        }
        
    }
    

}

