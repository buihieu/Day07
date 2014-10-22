//
//  DemoUIView.swift
//  UIViewControls
//
//  Created by techmaster on 9/19/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class HomeWorkDay7: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.grayColor()
        createSquare()
    }
    
    func createSquare() {
        var W = self.view.bounds.size.width
        for x in 0...8 {
            var square = UIView()
            square.bounds = CGRect(x: 0, y: 0, width: W, height: W)
            square.center = CGPoint(x: self.view.bounds.size.width * 0.5, y: self.view.bounds.size.height * 0.5)
            
            if(x % 2 == 0) {
                square.backgroundColor = UIColor.redColor()
            }else {
                square.backgroundColor = UIColor.blueColor()
                square.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
            }
            
            self.view.addSubview(square)
            W *= 0.707
        }
    }
}
