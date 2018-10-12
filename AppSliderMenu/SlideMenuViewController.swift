//
//  ContainerViewController.swift
//  AppSliderMenu
//
//  Created by nguyễn hữu đạt on 6/26/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

protocol SlideMenuViewControllerDelegate: class  {
    func sendData(text: String?)
}

class SlideMenuViewController: UIViewController {
    weak var delegate: SlideMenuViewControllerDelegate?
    
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSlideMenu(_ sender: Any) {
        delegate?.sendData(text: nameTextField.text)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
