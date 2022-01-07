//
//  AppRating.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 07.01.2022.
//

import UIKit
import SnapKit

class  AppRating: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "AppRating"
        initilize()
    }

    private func initilize() {
        view.backgroundColor = UIColor(red: 50/255, green: 11/255, blue: 200/255, alpha: 1)
        
        let label = UILabel()
        label.text = " RATING🎉"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(150)
            
        }
    }

}
