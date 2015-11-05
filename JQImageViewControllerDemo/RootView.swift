//
//  RootView.swift
//  JQImageViewControllerDemo
//
//  Created by JQ@Onbeep on 11/4/15.
//  Copyright © 2015 Jim Qin. All rights reserved.
//

import UIKit

protocol RootViewDelegate {

    func didPressDemoButton()
}

final class RootView: UIView {

    var delegate: RootViewDelegate?

    private let width       = 200
    private let height      = 44
    private let topMargin   = 88

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .whiteColor()

        let demoButton = DemoButton(frame: .zero)
        demoButton.addTarget(self, action: "didPressDemoButton", forControlEvents: .TouchUpInside)
        addSubview(demoButton)

        demoButton.translatesAutoresizingMaskIntoConstraints = false
        let viewsDictionary = ["demoButton": demoButton]

        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[demoButton(\(width))]",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: nil,
            views: viewsDictionary
        )
        addConstraints(horizontalConstraints)

        let centerHorizontally = centerHorizontallyConstraint(forView: viewsDictionary["demoButton"]!)
        addConstraint(centerHorizontally)

        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-\(topMargin)-[demoButton(\(height))]",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: nil,
            views: viewsDictionary
        )
        addConstraints(verticalConstraints)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func centerHorizontallyConstraint(forView view: UIView) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(
            item: view,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view.superview!,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0.0
        )

        return constraint
    }

    func didPressDemoButton() {
        delegate?.didPressDemoButton()
    }
}
