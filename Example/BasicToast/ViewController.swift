//
//  ViewController.swift
//  BasicToast
//
//  Created by 62205797 on 06/16/2022.
//  Copyright (c) 2022 62205797. All rights reserved.
//

import UIKit
import BasicToast
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func topTabbed(_ sender: Any) {
        if #available(iOS 13.0, *) {
            BasicToast.show(self: self, message: "this is a top toast", duration: 3.0, position: .top)
        } else {
            // Fallback on earlier versions
        }
    }
    
    @IBAction func middleTabbed(_ sender: Any) {
        if #available(iOS 13.0, *) {
            BasicToast.show(self: self, message: "this is a middle toast", duration: 3.0, position: .middle)
        } else {
            // Fallback on earlier versions
        }
    }

    @IBAction func bottomTabbed(_ sender: Any) {
        if #available(iOS 13.0, *) {
            BasicToast.show(self: self, message: "this is a bottom toast", duration: 3.0, position: .bottom)
        } else {
            // Fallback on earlier versions
        }
    }

}

