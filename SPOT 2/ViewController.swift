//
//  ViewController.swift
//  SPOT 2
//
//  Created by Emily Godwin on 11/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad()
        {
            super.viewDidLoad()
            
            //Hide Keyboard
            let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
            view.addGestureRecognizer(tap)
            
            let _timer = Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
            
        }
        @objc func timeToMoveOn() {
            self.performSegue(withIdentifier: "segueMain", sender: self)
        }
}
