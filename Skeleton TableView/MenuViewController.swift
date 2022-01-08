//
//  MenuViewController.swift
//  Skeleton TableView
//
//  Created by Kirill Drozdov on 05.01.2022.
//

import UIKit

protocol MenuViewControllerDelegate: AnyObject{
    func didSelcted(menuItem: MenuViewController.MenuOption)
}

class  MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    weak var delegate: MenuViewControllerDelegate?

    enum MenuOption: String, CaseIterable{
         case home = "Home"
        case info = "Information"
        case appRating = "App Rating"
        case shareApp = "Share App"
        case settings = "Settings "
        
        var imageName: String {
            switch self {
            case .home:
                return "music.note.house.fill"
            case .info:
                return "airplane.arrival"
            case .appRating:
                return "star.bubble"
            case .shareApp:
                return "plus.message"
            case .settings:
                return "gear.badge.questionmark"
            }
        }
    }
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .lightGray
        tableView.register(UITableViewCell.self , forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.bounds.size.width, height: view.bounds.size.height  )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  .lightGray
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuOption.allCases.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = MenuOption.allCases[indexPath.row].rawValue
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .lightGray
        cell.contentView.backgroundColor = .lightGray
        cell.imageView?.image =  UIImage(systemName:  MenuOption.allCases[indexPath.row].imageName)
        cell.imageView?.tintColor = .green
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true )
        
        let item = MenuOption.allCases[indexPath.row]
        delegate?.didSelcted(menuItem: item)
    }
    
    
}
