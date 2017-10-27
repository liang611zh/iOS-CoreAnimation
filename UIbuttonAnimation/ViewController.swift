//
//  ViewController.swift
//  UIbuttonAnimation
//
//  Created by LIANG ZHAO on 2017-10-26.
//  Copyright © 2017 bcit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pulseBtn(_ sender: UIButton) {
        sender.pulseit()
    }
    
    @IBAction func flashBtn(_ sender: UIButton) {
        sender.flashit()
    }
    @IBAction func shakeBtn(_ sender: UIButton) {
        sender.shakeit()
    }
    
    
}

