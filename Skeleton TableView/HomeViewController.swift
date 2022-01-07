//
//  HomeViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 05.01.2022.
//

import UIKit
import SnapKit

protocol HomeViewControllerDelegate: AnyObject {
     func didTapButtonMenu()
}

class  HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?

    override func viewDidLoad() {
        initilize()
        super.viewDidLoad()
//        view.backgroundColor = .white
        title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(barButtonTapped ))
    }
    @objc func barButtonTapped(){
        delegate?.didTapButtonMenu()
         
    }
    
    private func initilize() {
        view.backgroundColor = UIColor(red: 124/255, green: 238/255, blue: 228/255, alpha: 1)
        
        
        let label = UILabel()
        label.text = "🏠 HOME"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { make in
//            make.left.equalToSuperview().inset(50)
//            make.top.equalToSuperview().inset(150)
            make.centerX.centerY.equalToSuperview()
            
        }
        let button = UIButton(type: .system)
        button.backgroundColor = view.backgroundColor
        button.setTitle("Push me pls..", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.equalTo(label).offset(50)
            make.left.right.equalToSuperview().inset(70)
        }
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }
    @objc private func tapped(){
        print("Hi, i tepped")
    }

}
