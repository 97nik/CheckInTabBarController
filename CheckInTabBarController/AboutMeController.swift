//
//  AboutMeController.swift
//  CheckInTabBarController
//
//  Created by ВОНЮЧКА on 30.11.2020.
//


import UIKit

class AboutMeController: UIViewController {
    
    @IBOutlet weak var wellcomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wellcomLabel.text = "Welcome \(user.name)"
       
    }
    
    @IBAction func loginOutButtom(_ sender: Any) {
    }
    
}
