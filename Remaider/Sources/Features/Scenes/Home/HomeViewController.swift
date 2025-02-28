//
//  HomeViewController.swift
//  Remaider
//
//  Created by Arley Souto on 27/02/25.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    let contentView: HomeView
    let flowDelegate: HomeFlowDelegate
    
    init(contentView: HomeView, flowDelegate: HomeFlowDelegate){
        self.contentView = contentView
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindView()
    }
    
    func setupBindView(){
        self.view = contentView
    }
    
    private func setup(){
        buildHierarchy()
    }
    
    private func buildHierarchy(){
        setupContentViewToBounds(contentView: contentView)
    }
}
