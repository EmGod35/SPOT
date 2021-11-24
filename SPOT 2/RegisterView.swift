//
//  RegisterView.swift
//  SPOT 2
//
//  Created by Emily Godwin on 11/22/21.
//

import UIKit

class RegisterView:UIViewController{
    
    @IBOutlet var registerUsername: UITextField!
    @IBOutlet var registerPassword: UITextField!
    @IBOutlet var registerVerifyPassword: UITextField!
    override func viewDidLoad()
        {
            super.viewDidLoad()
            
            //Hide Keyboard
            let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
            view.addGestureRecognizer(tap)
        }

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "segue1"{
            if (registerPassword.text == registerVerifyPassword.text) {
                      return true
                  }
              }

              return false
       }
    
}
