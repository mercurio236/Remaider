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

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {

        self.addSubview(logoImagemView)

        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImagemView.centerXAnchor.constraint(
                equalTo: self.centerXAnchor),
            logoImagemView.centerYAnchor.constraint(
                equalTo: self.centerYAnchor),

        ])

    }

}
