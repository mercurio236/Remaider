//
//  LogginBottomSheetViewController.swift
//  Remaider
//
//  Created by Arley Souto on 30/01/25.
//

import UIKit

class LogginBottomSheetViewController: UIViewController{
    let loginView = LogginBottomSheetView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    
    private func setupUI(){
        
        setupConstrains()
    }
    
    private func setupConstrains(){
        self.view.addSubview(loginView)
    }
    
}
