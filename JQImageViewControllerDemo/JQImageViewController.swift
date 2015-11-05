//
//  JQImageViewController.swift
//  JQImageViewControllerDemo
//
//  Created by JQ@Onbeep on 11/4/15.
//  Copyright © 2015 Jim Qin. All rights reserved.
//

import UIKit

class JQImageViewController: UIViewController {

    override func loadView() {
        let contentView = UIView(frame: UIScreen.mainScreen().bounds)
        contentView.backgroundColor = .clearColor()
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
