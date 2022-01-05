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
        
        var labelText = UILabel()
        labelText.text = "Hello"
        labelText.textColor = .black
        labelText.frame = CGRect(x: 80, y: 100, width: 50, height: 50)
        view.addSubview(labelText)
        
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(barButtonTapped ))
    }
    @objc func barButtonTapped(){
        delegate?.didTapButtonMenu()
         
    }

}
