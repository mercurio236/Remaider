//
//  LogginBottomSheetView.swift
//  Remaider
//
//  Created by Arley Souto on 30/01/25.
//

import UIKit

class LogginBottomSheetView: UIView {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "login.label.title".localized
        label.font = Typography.subheading
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let hadleArea: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = Metrics.tiny  //para adicionar radius precisamos adicionar o layer
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let loginTextFieldLabel: UILabel = {
        let label = UILabel()
        label.text = "login.loginText.label.title".localized
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let passwordTextFieldLabel: UILabel = {
        let label = UILabel()
        label.text = "login.passwordText.label.title".localized
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let emailTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "login.email.placeholder".localized
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private let passwordTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "login.password.placeholder".localized
        text.isSecureTextEntry = true
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("login.button.title".localized, for: .normal)  //normal quando for para clicar
        button.backgroundColor = Colors.primaryRedBase
        button.layer.cornerRadius = Metrics.medium
        button.tintColor = .white
        button.titleLabel?.font = Typography.subheading
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        self.backgroundColor = .white
        self.layer.cornerRadius = Metrics.small

        self.addSubview(titleLabel)
        self.addSubview(loginTextFieldLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextFieldLabel)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        setupConstrains()
    }

    private func setupConstrains() {  //aqui é para renderizar na tela
        NSLayoutConstraint.activate([

            titleLabel.topAnchor.constraint(
                equalTo: self.topAnchor, constant: Metrics.huge),
            titleLabel.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),

            loginTextFieldLabel.topAnchor.constraint(
                equalTo: titleLabel.bottomAnchor, constant: Metrics.medium),
            loginTextFieldLabel.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),

            emailTextField.topAnchor.constraint(
                equalTo: self.loginTextFieldLabel.bottomAnchor,
                constant: Metrics.small),
            emailTextField.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),
            emailTextField.trailingAnchor.constraint(
                equalTo: self.trailingAnchor, constant: -Metrics.medium),
            emailTextField.heightAnchor.constraint(equalToConstant: Metrics.buttonSize),


            passwordTextFieldLabel.topAnchor.constraint(
                equalTo: self.emailTextField.bottomAnchor,
                constant: Metrics.medium),
            passwordTextFieldLabel.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),

            passwordTextField.topAnchor.constraint(
                equalTo: passwordTextFieldLabel.bottomAnchor, constant: Metrics.small),
            passwordTextField.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),
            passwordTextField.trailingAnchor.constraint(
                equalTo: self.trailingAnchor, constant: -Metrics.medium),
            passwordTextField.heightAnchor.constraint(equalToConstant: Metrics.buttonSize),

            loginButton.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),
            loginButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -Metrics.huge),
            loginButton.trailingAnchor.constraint(
                equalTo: self.trailingAnchor, constant: -Metrics.medium),
            loginButton.heightAnchor.constraint(equalToConstant: Metrics.buttonSize),
        ])

    }

}
