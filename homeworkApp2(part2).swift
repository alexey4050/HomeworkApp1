/**3. Реализовать экран с использованием сториборд (проект 2).
Это форма реализации.
Цвета на усмотрение, экран должен быть приближен к схеме (расположение элементов).
В поля «Логин» и «Пароль» можно вводить текст. */

import UIKit

class LoginViewController: UIViewController{

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginLabel:UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad(){
        super.viewDidLoad()
    
        loginButton.layer.cornerRadius = 8
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
    }
    @objc func loginButtonPressed(){

    }
}