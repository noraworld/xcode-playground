//
//  ViewController.swift
//  SimpleCounter
//
//  Created by のら＊＊ on 2015/05/22.
//  Copyright (c) 2015年 Nora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    
    var num:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plusOne(sender: AnyObject) {
        num += 1
        counter.text = String(num)
    }

    @IBAction func minusOne(sender: AnyObject) {
        num -= 1
        if (num >= 0) {
            counter.text = String(num)
        }
        else {
            num += 1
        }
    }
    
    @IBAction func reset(sender: AnyObject) {
        num = 0
        counter.text = String(num)
    }
    
}

