//
//  ViewController.swift
//  12015744Event
//
//  Created by Hari Kiran Nagandla on 30/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.placeholder = "UserName"
        password.placeholder = "Password"
        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: UIButton) {
        if let usernameText = name.text, let passwordText = password.text {
            if usernameText == "akshara" && passwordText == "1234"
            {
                performSegue(withIdentifier: "home", sender: self)
            }
            else {
                let alert = UIAlertController(title: "Invalid", message: "Invalid Credentials Please Enter the correct Details", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert,animated: true, completion: nil)
            }
        }
    }
    }
    


