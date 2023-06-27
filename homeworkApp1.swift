/** 1. Создать два проекта.
В первом удалить все упоминания сториборд (проект 1).
Во втором оставить (проект 2).
2. Реализовать экран без использования сториборд (проект 1).
Это форма реализации.
Цвета на усмотрение, экран должен быть приближен к схеме (расположение элементов).
В поля «Логин» и «Пароль» можно вводить текст.*/

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupSubviews()
    }

    private func setupSubviews(){
        let logoImageView = UIImageView(image: UIImage(named: "logo"))
        logoImageView.contentMode = .scaleAspectFit

        let loginLabel = UILabel()
        loginLabel.text = "Логин"
        loginLabel.textColor = .black
        loginLabel.font = UIFont.systemFont(ofSize: 18)

        let loginTextField = UITextField()
        loginTextField.borderStyle = .roundedRect
        loginTextField.placeholder = "Введите логин"

        let passwordLabel = UILabel()
        passwordLabel.text = "Пароль"
        passwordLabel.textColor = .black
        passwordLabel.font = UIFont.systemFont(ofSize: 18)

        let passwordTextField = UITextField()
        passwordTextField.text = borderStyle = .roundedRect
        passwordTextField.placeholder = "Введите пароль"
        passwordLabel.isSecureTextEntry = true

        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Войти", for: .normal)
        loginButton.backgroundColor = .blue
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 8
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)

        let stackView = UIStackView(arrangeSuviews: [logoImageView, loginLabel, loginTextField, passwordLabel, passwordTextField, loginButton])
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatestAutoresizingMaskIntoContrains = false

        view.addSubview(stackView)

        NSLayoutContrains.activate([logoImageView.heightAnchor.constraint(equualToConstant: 120),
        stackView.centerYAnchor.constraint(equalTo: veiw.centerYAnchor),
        stackView.leadingAnchor.constraint(equelTo: veiw.leadingAnchor, constant: 32),
        stackView.trailingAnchor.constraint(equalTo: veiw.trailingAnchor, constant: -32)])
    }

    @objc func loginButtonPressed(){

    }
}

