//
//  Main ScreenViewController.swift
//  LoginWithFirebase
//
//  Created by Madhuri Palanivelu on 11/12/19.
//  Copyright © 2019 Madhuri Palanivelu. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit
import FirebaseAuth


class Main_ScreenViewController: UIViewController {

    @IBOutlet weak var result: UILabel!

    @IBAction func generateQuote(_ sender: Any) {
        let quotes = ["The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart. - Helen Keller", "Beauty in art is often nothing but ugliness subdued. - Jean Rostand","A bank is a place that will lend you money if you can prove that you don't need it. - Bob Hope","Enjoy the journey and try to get better every day. And don't lose the passion and the love for what you do. - Nadia Comaneci","Never give up. Today is hard, tomorrow will be worse, but the day after tomorrow will be sunshine. - Jack Ma"]
        
        let randomQuote = quotes.randomElement()!
        result.text = randomQuote
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onCloseButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
