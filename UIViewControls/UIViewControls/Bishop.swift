//
//  ViewController.swift
//  FirstUI
//
//  Created by Trinh Minh Cuong on 10/16/14.
//  Copyright (c) 2014 Techmaster Vietnam. All rights reserved.
//

import UIKit

class Bishop: UIViewController {
    
  //  var  timer = NSTimer()
    //var counter = 0
    var bishop: UIImageView?
    var button: UIButton?
    var timer = NSTimer ()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.grayColor()
        let maxWidth = self.view.bounds.size.width
        let chessWidth: CGFloat = (maxWidth - 20.0) / 8.0
        
        for i in 0...7 {
            let square1 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100, width: chessWidth, height: chessWidth))
            let square2 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100 + chessWidth, width: chessWidth, height: chessWidth))
            let square3 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100 + 2*chessWidth , width: chessWidth, height: chessWidth))
            let square4 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100 + 3*chessWidth, width: chessWidth, height: chessWidth))
            let square5 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100 + 4*chessWidth, width: chessWidth, height: chessWidth))
            let square6 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100 + 5*chessWidth, width: chessWidth, height: chessWidth))
            let square7 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100 + 6*chessWidth, width: chessWidth, height: chessWidth))
            let square8 = UIView(frame: CGRect(x: chessWidth * CGFloat(i) + 10.0, y: 100 + 7*chessWidth, width: chessWidth, height: chessWidth))
            if i % 2 == 0 {
                square1.backgroundColor = UIColor.whiteColor()
                square2.backgroundColor = UIColor.blackColor()
                square3.backgroundColor = UIColor.whiteColor()
                square4.backgroundColor = UIColor.blackColor()
                square5.backgroundColor = UIColor.whiteColor()
                square6.backgroundColor = UIColor.blackColor()
                square7.backgroundColor = UIColor.whiteColor()
                square8.backgroundColor = UIColor.blackColor()
            } else {
                square1.backgroundColor = UIColor.blackColor()
                square2.backgroundColor = UIColor.whiteColor()
                square3.backgroundColor = UIColor.blackColor()
                square4.backgroundColor = UIColor.whiteColor()
                square5.backgroundColor = UIColor.blackColor()
                square6.backgroundColor = UIColor.whiteColor()
                square7.backgroundColor = UIColor.blackColor()
                square8.backgroundColor = UIColor.whiteColor()
            }
            self.view.addSubview(square1)
            self.view.addSubview(square2)
            self.view.addSubview(square3)
            self.view.addSubview(square4)
            self.view.addSubview(square5)
            self.view.addSubview(square6)
            self.view.addSubview(square7)
            self.view.addSubview(square8)
           
        }

  //      bishop = UIImageView

       // self.edgesForExtendedLayout = UIRectEdge.Top
      /*  let label = UILabel(frame: CGRect(x: 0, y: 30, width: 100, height: 30))
        label.text = "Hello World"
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        helloHell.backgroundColor = UIColor.grayColor()
        helloHell.center = CGPoint(x: 100, y: 100)
        
        button = UIButton(frame: CGRect(x: 0, y: 130, width: 100, height: 30))
        button!.setTitle("Tap on me", forState: UIControlState.Normal)
        button!.addTarget(self, action: "tapMe", forControlEvents: UIControlEvents.TouchUpInside) //: cần có dấu : truyền vào
        button!.backgroundColor = UIColor.grayColor()
        self.view.addSubview(button!)*/
        
        // self.view.bringSubviewToFront(bishop) --> Hien thi bishop len tren background
        bishop = UIImageView(frame: CGRect(x: 10.0 + chessWidth * CGFloat(2) , y: 100, width: chessWidth, height: chessWidth))
        bishop?.image = UIImage(named: "bishop1.jpeg")  // reference to Image
        self.view .addSubview(bishop!)
        
        button = UIButton(frame: CGRect(x: 10, y: 200 + 7 * chessWidth, width: 100, height: 30))
        button?.setTitle("Click", forState: UIControlState.Normal)
        button!.addTarget(self, action: "tapMe", forControlEvents: UIControlEvents.TouchUpInside)
        button?.backgroundColor = UIColor.redColor()
        self.view.addSubview(button!)
    }
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func tapMe() {
        println("Cool")
        button!.removeFromSuperview()
    }


}

