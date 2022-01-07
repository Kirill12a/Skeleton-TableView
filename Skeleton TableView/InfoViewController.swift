//
//  InfoViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 05.01.2022.
//

// Для каждого экрана нужно создавать такой файл
import UIKit
import SnapKit

class  InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Info"
        initilize()
       

    }
    
    private func initilize() {
        view.backgroundColor = UIColor(red: 124/255, green: 132/255, blue: 42/255, alpha: 1)
        
        let label = UILabel()
        label.text = "🎉 INFO"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(150)
            
        }
    }
    
}
