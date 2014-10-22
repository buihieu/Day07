//
//  DemoUIView.swift
//  UIViewControls
//
//  Created by techmaster on 9/19/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class DemoUIView: UIViewController {
    var smallView: UIView? //Khai báo instance
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //Frame khi xoay thì sẽ thay đổi width và height
        //Còn bound thì vẫn giữ nguyên
        var frame = self.smallView?.frame
        let w = frame!.width
        let h = frame!.height
        let string = String(format: "width =%3.2f, height = %3.2f", w, h)
        println("\(w)  -- \(h)")
    }
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        let view = UIView(frame: CGRect(x: 10, y: 100, width: 60, height: 60))
        view.backgroundColor = UIColor.blueColor()
        self.view.addSubview(view)  //self.view là cha của view
        
        self.smallView = UIView()
     
        
   //     self.smallView!.center = CGPoint(x: 15 y:15)
        self.smallView = UIView()
        self.smallView!.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)
        self.smallView!.center = CGPoint(x: 30, y: 30)
        self.smallView!.backgroundColor = UIColor.yellowColor()
        self.smallView!.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
        view.addSubview(self.smallView!) //view là cha của smallView
        
        let smallerView = UIView()
        smallerView.bounds = CGRect(x: 0, y: 0, width: 15, height: 15)
        smallerView.center = CGPoint(x: 15, y: 15)
        smallerView.backgroundColor = UIColor.redColor()
        self.smallView!.addSubview(smallerView) // self.smallView la cha cua smallView
        
        let smallerView2 = UIView()
        smallerView2.bounds = CGRect(x: 0, y: 0, width: 7.5, height: 7.5)
        smallerView2.center = CGPoint(x: 15, y: 15)
        smallerView2.backgroundColor = UIColor.grayColor()
        self.smallView!.addSubview(smallerView2)
       
        /*
        for i in 1...5 {
        var smallerView = UIView()
        smallerView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.707 , height: self.view.bounds.height * 0.707)
            self.smallView?.center = CGPoint(x: 30, y: 30)
            smallerView.backgroundColor = UIColor.redColor()
           // smallView.addSubview(self.smallView!)
        }
        */
        //Add button
        let button = UIButton(frame: CGRect(x: 150, y: 100, width: 100, height: 40))
        button.backgroundColor = UIColor.grayColor()
        button.setTitle("Remove", forState: UIControlState.Normal)
        button.addTarget(self, action: "removeRect:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    func removeRect(button: UIButton) {
        self.smallView?.removeFromSuperview()
    }

    
}
