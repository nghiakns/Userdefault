//
//  ViewController.swift
//  Userdefault
//
//  Created by Kim Nghĩa on 05/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var txt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UserDefaults.standard.string(forKey: "textData")
        
        if value != nil {
            lbl.text = value
        }
        else {
            lbl.text = "Your text here"
        }
    }

    @IBAction func submit(_ sender: Any) {
        lbl.text = txt.text
        UserDefaults.standard.set(txt.text, forKey: "textData")
    }
    

}

