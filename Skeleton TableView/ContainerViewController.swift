//
//  ViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 03.01.2022.
//

import UIKit


class ContainerViewController: UIViewController {
    
    enum MenuState {
        case openend
        case closed
    }
    
    private var menuState: MenuState = .closed
    
    let menuVC = MenuViewController()
    let homeVC = HomeViewController()
    var navVC: UINavigationController?
    
    lazy var infoVC = InfoViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildesVC()
        
    }
    
    private func addChildesVC(){
        menuVC.delegate = self
        
        addChild(menuVC)
        view.addSubview(menuVC.view)
        menuVC.didMove(toParent: self)
        
        homeVC.delegate = self
        
        let navVC = UINavigationController(rootViewController: homeVC)
        addChild(navVC)
        view.addSubview(navVC.view)
        navVC.didMove(toParent: self)
        
        self.navVC = navVC
    }
    
    
}


extension ContainerViewController: HomeViewControllerDelegate{
    func didTapButtonMenu() {
        togleMenu(comletion: nil)
        
        
    }
    
    func togleMenu(comletion: (()->Void)?){
        switch menuState {
        case .closed:
            UIView.animate(withDuration: 0.5, delay:  0, usingSpringWithDamping:  0.8, initialSpringVelocity: 0, options: .curveEaseInOut) {
                
                self.navVC?.view.frame.origin.x = self.homeVC.view.frame.size.width - 100
                
            } completion: {[weak self] done in
                if done{
                    self?.menuState = .openend
                }
            }
            
            
        case .openend:
            UIView.animate(withDuration: 0.5, delay:  0, usingSpringWithDamping:  0.8, initialSpringVelocity: 0, options: .curveEaseInOut) {
                
                self.navVC?.view.frame.origin.x = 0
                
            } completion: {[weak self] done in
                if done{
                    self?.menuState = .closed
                    DispatchQueue.main.async {
                        comletion?()
                    }
                }
            }
        }
    }
    
    
}

extension ContainerViewController: MenuViewControllerDelegate{
    func didSelcted(menuItem: MenuViewController.MenuOption) {
        togleMenu(comletion: nil)
        switch menuItem{
        case .home :
            self.resetToHome()
        case .info:
            self.addInfo()
        case .appRating:
            break
        case .shareApp:
            break
        case .settings:
            break
        }
    }
    func addInfo(){
        let vc = infoVC
        homeVC.addChild(vc)
        homeVC.view.addSubview(vc.view)
        vc.view.frame = view.frame
        vc.didMove(toParent: homeVC)
        homeVC.title = vc.title
    }
    
    func resetToHome(){
        infoVC.view.removeFromSuperview()
        infoVC.didMove(toParent: nil)
        homeVC.title = "Home "
    }
    
}
