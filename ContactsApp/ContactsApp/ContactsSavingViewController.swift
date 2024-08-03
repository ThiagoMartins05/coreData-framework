//
//  ViewController.swift
//  ContactsApp
//
//  Created by Thiago Martins on 03/08/24.
//

import UIKit

class ContactsSavingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        view = ContactsSavingView()
    }
}
