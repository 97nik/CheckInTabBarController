//
//  LoginViewController.swift
//  CheckInTabBarController
//
//  Created by ВОНЮЧКА on 30.11.2020.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginName: UITextField!
    @IBOutlet weak var pasName: UITextField!
    
//    private let user = user.name
//
//    // MARK: Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let tabBarController = segue.destination as! UITabBarController
//        let aboutUserVC = tabBarController.viewControllers?.first as! AboutMeController
//        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
//        let kirovUserVC = navigationVC.topViewController as! AboutMeController
//        aboutUserVC.user = user
//        kirovUserVC.user = user
//    }
    
    @IBAction func login() {
        if (pasName.text == user.password) && (loginName.text == user.name) {
            performSegue(withIdentifier: "login", sender: nil)
    }
        else {

                    showAlert(title: "Invalid login or password",
        message: "Please, enter correct login and password",
        textField: pasName)
            return
    }
        }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
       pasName.text = nil
        loginName.text = nil
      
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops!",
                  message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func forgotPasswordLogin() {
        showAlert(title: "Oops!",
                  message: "Your Login is \(user.name) 😉")
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
// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)

    }
}

// MARK: Text Field Delegate
extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginName {
            textField.resignFirstResponder()
            pasName.becomeFirstResponder()
        } else {
           login()
        }
        return true
    }
}
