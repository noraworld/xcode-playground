//
//  ViewController.swift
//  Drawing
//
//  Created by 青木宏祐 on 2015/05/24.
//  Copyright (c) 2015年 Kosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var drawViewArea: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ClearButton(sender: AnyObject) {
        var theDrawView : drawView = drawViewArea as drawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    }

}

