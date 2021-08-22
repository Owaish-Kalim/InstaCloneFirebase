//
//  SettinngsViewController.swift
//  InstaCloneFirebase
//
//  Created by owaish on 20/08/21.
//

import UIKit
import Firebase

class SettinngsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
       
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil) 
        } catch {
            print("error")
        }
       
    }
}
