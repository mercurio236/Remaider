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
        label.text = "Entre para acessar suas receitas"
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

    private let emailTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Email"
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private let passwordTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Senha"
        text.isSecureTextEntry = true
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Entrar", for: .normal)  //normal quando for para clicar
        button.backgroundColor = Colors.primaryRedBase
        button.layer.cornerRadius = Metrics.tiny
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

        self.addSubview(hadleArea)
        self.addSubview(titleLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        setupConstrains()
    }

    private func setupConstrains() {  //aqui é para renderizar na tela
        NSLayoutConstraint.activate([
            hadleArea.topAnchor.constraint(
                equalTo: self.topAnchor, constant: Metrics.small),
            hadleArea.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            hadleArea.widthAnchor.constraint(equalToConstant: 40),
            hadleArea.heightAnchor.constraint(equalToConstant: 6),

            titleLabel.topAnchor.constraint(
                equalTo: self.hadleArea.bottomAnchor, constant: Metrics.medium),
            titleLabel.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),

            emailTextField.topAnchor.constraint(
                equalTo: self.titleLabel.bottomAnchor, constant: Metrics.medium),
            emailTextField.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),

            passwordTextField.topAnchor.constraint(
                equalTo: self.emailTextField.bottomAnchor,
                constant: Metrics.medium),
            passwordTextField.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),

            loginButton.topAnchor.constraint(
                equalTo: self.passwordTextField.bottomAnchor,
                constant: Metrics.medium),
            loginButton.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: Metrics.medium),
            loginButton.trailingAnchor.constraint(
                equalTo: self.trailingAnchor, constant: -Metrics.medium),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
        ])

    }

}
