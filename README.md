# BasicToast

[![CI Status](https://img.shields.io/travis/62205797/BasicToast.svg?style=flat)](https://travis-ci.org/62205797/BasicToast)
[![Version](https://img.shields.io/cocoapods/v/BasicToast.svg?style=flat)](https://cocoapods.org/pods/BasicToast)
[![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
[![License](https://img.shields.io/cocoapods/l/BasicToast.svg?style=flat)](https://cocoapods.org/pods/BasicToast)
[![Platform](https://img.shields.io/cocoapods/p/BasicToast.svg?style=flat)](https://cocoapods.org/pods/BasicToast)

## Description

BasicToast is a library shows basic toast on the view.

## Demo App

To run the example project, clone the repo, and run `pod install` from the Example directory first.

<p>
<img src="https://user-images.githubusercontent.com/62205797/174001852-29094ac8-11c5-47c9-81e4-ad679c078193.png" width="30%">
<img src="https://user-images.githubusercontent.com/62205797/174001862-41a44996-31c4-499d-90b4-3ffacc77ec0e.png" width="30%">
<img src="https://user-images.githubusercontent.com/62205797/174001871-c6dbd487-23d4-4a19-8b3a-95e139fd90ab.png" width="30%">
</p>

## Example

```swift
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


```

## Feature

```swift
BasicToast.show(self: UIViewController, message: String, duration: TimeInterval = 5.0, position: pos = .bottom, font: UIFont = UIFont.systemFont(ofSize: 14.0))
```


## Installation

BasicToast is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BasicToast'
```

## Author

62205797, hyeoncheolkim96@gmail.com

## License

BasicToast is available under the MIT license. See the LICENSE file for more info.
