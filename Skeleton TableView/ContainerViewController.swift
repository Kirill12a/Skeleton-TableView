//
//  ViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 03.01.2022.
//

import UIKit


class ContainerViewController: UIViewController {

    let menuVC = MenuViewController()
    let homeVC = HomeViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildesVC()
        
    }
    
    private func addChildesVC(){
        addChild(menuVC)
        view.addSubview(menuVC.view)
        menuVC.didMove(toParent: self)
        
        let navVC = UINavigationController(rootViewController: homeVC)
        addChild(navVC)
        view.addSubview(navVC.view)
        navVC.didMove(toParent: self)
    }


}

