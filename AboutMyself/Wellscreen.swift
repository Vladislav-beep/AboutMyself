//
//  Wellscreen.swift
//  AboutMyself
//
//  Created by Владислав Сизонов on 25.10.2020.
//

import UIKit

class Wellscreen: UIViewController {

    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var wellcomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wellcomLabel.text = "Wellcome \(Login.login)!"
    }
    

    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
}
