//
//  LoginView.swift
//  SPOT 2
//
//  Created by Emily Godwin on 11/22/21.
//

import UIKit

class LoginView: UIViewController {
    let sysUsername:String = "default"
    let sysPassword:String = "basepass"
    
    @IBOutlet var loginUsername: UITextField!
    @IBOutlet var loginPassword: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad()
        {
            super.viewDidLoad()
            
            //Hide Keyboard
            let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
            view.addGestureRecognizer(tap)
        }

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "segue1"{
                  if (loginUsername.text == sysUsername && loginPassword.text == sysPassword) {
                      return true
                  }
              }
              return false
       }
}
