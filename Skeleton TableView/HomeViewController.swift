//
//  HomeViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 05.01.2022.
//

import UIKit


class  HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(barButtonTapped ))
    }
    @objc func barButtonTapped(){
          print("tap")
    }

}
