//
//  SplashViewControlled.swift
//  Remaider
//
//  Created by Arley Souto on 29/01/25.
//

import UIKit

class SplashViewController: UIViewController {

    let contentView: SplashView
    public weak var flowDelegate: SplashFlowDelegate?
    
    init(contentView: SplashView, flowDelegate: SplashFlowDelegate){
        self.flowDelegate = flowDelegate
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGesture()

        //ciclo de decisão se vai para login ou para menu
        decideNavigationFlow()
        setup()
    }
    
    private func decideNavigationFlow(){
        if let user = UserDefaultManager.loadUser(), user.isUserSaved{
            flowDelegate?.navigateToHome()
        }else {
            showLoginBottomSheet()
        }
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
        self.flowDelegate?.openLoginBottomSheet()

    }
}
