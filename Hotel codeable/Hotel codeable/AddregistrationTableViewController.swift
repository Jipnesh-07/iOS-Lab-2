//
//  AddregistrationTableViewController.swift
//  Hotel codeable
//
//  Created by STUDENT on 10/04/24.
//

import UIKit

class AddregistrationTableViewController: UITableViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        let firstname = firstNameTextField.text ?? ""
        let lastname = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        print(firstname, lastname, email)
    }
}
    

    


