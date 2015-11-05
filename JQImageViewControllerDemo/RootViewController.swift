//
//  RootViewController.swift
//  JQImageViewControllerDemo
//
//  Created by JQ@Onbeep on 11/4/15.
//  Copyright © 2015 Jim Qin. All rights reserved.
//

import UIKit

final class RootViewController: UIViewController, RootViewDelegate {

    override func loadView() {
        let contentView = RootView(frame: UIScreen.mainScreen().bounds)
        contentView.delegate = self
        view = contentView
    }

    func didPressDemoButton() {
        let imageViewController = JQImageViewController()
        let navigationController = UINavigationController(rootViewController: imageViewController)
        navigationController.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .Cancel,
            target: self,
            action: "didPressCancel"
        )
        navigationController.modalPresentationStyle = .OverCurrentContext
        presentViewController(navigationController, animated: true, completion: nil)
    }

    func didPressCancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

