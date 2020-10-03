//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Yurii Sameliuk on 01/02/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userData = UserDefaults.standard
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = userData.object(forKey: "NameUser") as? String
        birthdayLabel.text = userData.object(forKey: "BirthdayUser") as? String
    }

    @IBAction func saveButton(_ sender: UIButton) {
       
        nameLabel.text = "Name: \(nameTextField.text!)"
       
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
        userData.set(nameLabel.text!, forKey: "NameUser")
        userData.set(birthdayLabel.text!, forKey: "BirthdayUser")
    }
    
    @IBAction func deleteButton(_ sender: UIButton) {
        userData.removeObject(forKey: "NameUser")
         nameLabel.text = "Name: "
        userData.removeObject(forKey: "BirthdayUser")
         birthdayLabel.text = "Birthday: "
    }
    
}

