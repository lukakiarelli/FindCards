//
//  ViewController.swift
//  FindCards
//
//  Created by Luca Chiarelli on 02/01/2015.
//  Copyright (c) 2015 luca. All rights reserved.
//

import UIKit

class FCPresentationViewController: UIViewController {
    
    @IBOutlet var titleLable:UILabel!
    @IBOutlet var continueButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Main Screen"

        // Do any additional setup after loading the view, typically from a nib.
        titleLable.backgroundColor = UIColor.whiteColor()
        //titleLable.text = "Press to continue"
        
        var titleString: String =  "attriString"
        
        var attriString = NSMutableAttributedString(
            string:titleString)
        
        let stringRange:NSRange = NSRange(location: 0, length: countElements(titleString))
        
        attriString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blackColor(), range: stringRange)
        attriString.addAttribute(NSFontAttributeName, value: UIFont(name: "Helvetica", size: 20.0)!, range: stringRange)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.Center
        attriString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: stringRange)
        
        titleLable.attributedText = attriString
        
        //Continue Button
        continueButton.backgroundColor = UIColor.blueColor()
        continueButton.layer.cornerRadius = 5.0
        continueButton.addTarget(self, action: "start", forControlEvents: UIControlEvents.TouchUpInside)
        continueButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    

    
    func start(){
        println("Start App")
    }


}

