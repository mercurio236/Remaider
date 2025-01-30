//
//  SplashView.swift
//  Remaider
//
//  Created by Arley Souto on 29/01/25.
//

import UIKit

class SplashView: UIView {

    private let logoImagemView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
        image.contentMode = .scaleAspectFit  //o quanto vai ocupar
        image.translatesAutoresizingMaskIntoConstraints = false  //tem que ter sempre
        return image
    }()

    private let titleLogoLabel: UILabel = {
        let label = UILabel()
        label.text = "Remaider"
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        self.backgroundColor = .systemRed

        self.addSubview(logoImagemView)
        self.addSubview(titleLogoLabel)

        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLogoLabel.centerXAnchor.constraint(
                equalTo: self.centerXAnchor, constant: 24),
            titleLogoLabel.centerYAnchor.constraint(
                equalTo: self.centerYAnchor, constant: -24),

            logoImagemView.trailingAnchor.constraint(
                equalTo: titleLogoLabel.leadingAnchor, constant: -8),
            logoImagemView.bottomAnchor.constraint(
                equalTo: titleLogoLabel.bottomAnchor),
        ])

    }

}
