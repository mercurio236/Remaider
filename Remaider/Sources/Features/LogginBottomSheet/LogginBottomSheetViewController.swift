//
//  LogginBottomSheetViewController.swift
//  Remaider
//
//  Created by Arley Souto on 30/01/25.
//

import UIKit

class LogginBottomSheetViewController: UIViewController {
    var mainNavigation:UINavigationController?
    let loginView = LogginBottomSheetView()
    let viewModel = LoginBottomSheetViewModel()
    var handleAreaHeight: CGFloat = 50.0

    override func viewDidLoad() {
        super.viewDidLoad()

        loginView.delegate = self
        setupUI()
        setupGesture()
        bindViewModel()
    }

    private func setupUI() {
        self.view.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = false

        setupConstrains()
    }

    private func setupConstrains() {
        NSLayoutConstraint.activate([
            loginView.leadingAnchor.constraint(
                equalTo: self.view.leadingAnchor),
            loginView.trailingAnchor.constraint(
                equalTo: self.view.trailingAnchor),
            loginView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])

        let heightConstraint = loginView.heightAnchor.constraint(
            equalTo: self.view.heightAnchor, multiplier: 0.5)

        heightConstraint.isActive = true

    }
    
    private func bindViewModel() {
        viewModel.successResult = {
            [weak self] in
            let viewController = UIViewController()
            viewController.view.backgroundColor = .red
            self?.dismiss(animated: false)
            self?.mainNavigation?.pushViewController(viewController, animated: true)
        }
    }

    private func setupGesture() {
    }

    //é quem vai mapear o clique na tela
    private func handlePanGesture() {

    }

    //metodo para animar o bottom sheet
    public func animateShow(completion: (() -> Void)? = nil) {
        self.view.layoutIfNeeded()
        loginView.transform = CGAffineTransform(
            translationX: 0, y: loginView.frame.height)
        UIView.animate(
            withDuration: 0.3,
            animations: {
                self.loginView.transform = .identity
                self.view.layoutIfNeeded()  //para atualizar o layout
            }
        ) {
            _ in
            completion?()
        }

    }

}

extension LogginBottomSheetViewController: LoginBottomSheetDelegate{
    func sendLoginData(user: String, password: String) {
        viewModel.doAuth(userNameLogin: user, password: password)
    }
}
