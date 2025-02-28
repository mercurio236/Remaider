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
        //decideNavigationFlow()
        startBreathingAnimation()
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
        setupContentViewToBounds(contentView: contentView)
    }

    private func setupGesture() {
        let tapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(showLoginBottomSheet))
        self.view.addGestureRecognizer(tapGestureRecognizer)
    }

    @objc
    private func showLoginBottomSheet() {
        animateLogoUp()
        self.flowDelegate?.openLoginBottomSheet()

    }
}

//MARK: - Animations
extension SplashViewController{
    private func startBreathingAnimation(){
        UIView.animate(withDuration: 1.5, delay:0.0, animations: {
            self.contentView.logoImagemView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }, completion: { _ in
            self.decideNavigationFlow()
        })
    }
    
    private func animateLogoUp(){
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut], animations:{
            self.contentView.logoImagemView.transform = self.contentView.logoImagemView.transform.translatedBy(x: 0, y: -150)
        } )
    }
}
