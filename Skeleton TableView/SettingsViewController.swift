//
//  SettingsViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 05.01.2022.
//

import UIKit

class  SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Settings"
        initilize()
    }
    private func initilize() {
        view.backgroundColor = UIColor(red: 43/255, green: 52/255, blue: 111/255, alpha: 1)
        
        let label = UILabel()
        label.text = "🎉 SETTINGS"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(150)
            
        }
    }

}

