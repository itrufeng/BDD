//
//  ViewController.swift
//  BDD
//
//  Created by Jian Zhang on 6/13/15.
//  Copyright (c) 2015 Steve (Zhang Jian). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

    @IBAction func onLogin(sender: AnyObject) {
        if equal(self.username.text, "kare") && equal(self.password.text, "kare123") {
            self.performSegueWithIdentifier("SHOW_HOME", sender: self)
        } else {
            UIAlertView(title: nil, message: "密码不正确", delegate: nil, cancelButtonTitle: "OK").show()
        }
    }
}

