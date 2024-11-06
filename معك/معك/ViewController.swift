//
//  ViewController.swift
//  معك
//
//  Created by Abdullah on 29/04/1446 AH.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func login(_ sender: Any) {
        GIDSignIn.sharedInstance.signIn(
            withPresenting: self) { signInResult, error in
             guard let result = signInResult else {return}
                let user = result.user
                
                let id = user.userID
                let name = user.profile?.name
                let email = user.profile?.email
                print(id)
                print(name)
                print(email)
           }
         
    }
}

