//
//  ViewController.swift
//  LoginWithFirebase
//
//  Created by Madhuri Palanivelu on 10/31/19.
//  Copyright © 2019 Madhuri Palanivelu. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit
import FirebaseAuth

class ViewController: UIViewController, LoginButtonDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //To set up the login button
        let loginButton = FBLoginButton()
        loginButton.delegate = self
        // Optional: Place the button in the center of your view.
        loginButton.center = view.center
        view.addSubview(loginButton)
        // To retrieve the email address and the publicly available display name of the user
        loginButton.permissions = ["public_profile","email"]
        
    }
    
    //LoginManager class provides methods for logging a user in and out.
    func loginButton(_ loginButton: FBLoginButton!, didCompleteWith result: LoginManagerLoginResult!, error: Error!) {
        if let error = error {
          print(error.localizedDescription)
          return
        }
        let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
        //This line is super important!
        //We wouldn't be logging our creds into Firebase without this!
        //This retrieves the Facebook access token from the user and convert to Firebase cred
        Auth.auth().signInAndRetrieveData(with: credential) { (authResult, error) in
            if let error = error {
              print("Facebook authentication with Firebase error: ", error)
              return
            }
          print("Login success!")
        }
        // Goes to the QuoteDisplay screen after successful login!
        performSegue(withIdentifier: "mainScreen", sender: nil)
        
     }
    
    //Logout function implemented as a part of LoginDelegate
    func loginButtonDidLogOut(_ loginButton: FBLoginButton!) {
        // Do something when the user logout
        print("Logged out")
      }


}

