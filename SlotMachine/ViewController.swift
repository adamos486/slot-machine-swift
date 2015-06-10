//
//  ViewController.swift
//  SlotMachine
//
//  Created by Adam Cobb on 6/10/15.
//  Copyright (c) 2015 Adam Cobb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!
    
    //Transformed into either a double or a float based on what system architecture you're using either 32bit or 64bit.
    //k means constant.
    //this will give us a nice 10 point margin on each side of the view.
    let kMarginForView: CGFloat = 10.0
    let kSixth: CGFloat = 1.0/6.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupContainerViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupContainerViews() {
        self.firstContainer =
            UIView(frame:
                CGRect(
                    x: self.view.bounds.origin.x + kMarginForView,
                    y: self.view.bounds.origin.y,
                    width: self.view.bounds.width - (kMarginForView * 2),
                    height: self.view.bounds.height * kSixth
                )
            )
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
    }
}

