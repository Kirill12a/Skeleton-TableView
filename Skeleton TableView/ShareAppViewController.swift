//
//  ShareAppViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 07.01.2022.
//

import UIKit

class  ShareAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "ShareAppViewController"
        initilize()
    }

    private func initilize() {
        view.backgroundColor = UIColor(red: 1/255, green: 200/255, blue: 244/255, alpha: 1)
        
        let label = UILabel()
        label.text = "🎉 SHARE_APP"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(150)
            
        }
    }
}
