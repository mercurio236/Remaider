//
//  SplashViewControlled.swift
//  Remaider
//
//  Created by Arley Souto on 29/01/25.
//

import UIKit

class SplashViewController: UIViewController {

    let contentView = SplashView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGesture()

        //ciclo de decisão se vai para login ou para menu
        setup()
    }

    private func setup() {
        self.view.addSubview(contentView)
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = Colors.primaryRedBase

        setupConstrains()

    }

    private func setupConstrains() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])

        contentView.translatesAutoresizingMaskIntoConstraints = false

    }

    private func setupGesture() {
        let tapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(showLoginBottomSheet))
        self.view.addGestureRecognizer(tapGestureRecognizer)
    }

    @objc
    private func showLoginBottomSheet() {
        let loginBottomSheet = LogginBottomSheetViewController()
        loginBottomSheet.mainNavigation = self.navigationController
        loginBottomSheet.modalPresentationStyle = .overCurrentContext
        loginBottomSheet.modalTransitionStyle = .crossDissolve

        self.present(loginBottomSheet, animated: false) {
            loginBottomSheet.animateShow()
        }

    }
}
