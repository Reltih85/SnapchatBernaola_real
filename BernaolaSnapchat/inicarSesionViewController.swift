//
//  ViewController.swift
//  BernaolaSnapchat
//
//  Created by Frankbp on 14/10/24.
//

import UIKit
import FirebaseAuth

class inicarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                print("Intentando Iniciar Sesión")
                if let error = error {
                    print("Se presentó el siguiente error: \(error.localizedDescription)")
                } else {
                    print("Inicio de sesión exitoso")
                }
            }
    }
}

