//
//  boltViewController.swift
//  lesson10HW
//
//  Created by Дмитрий Петрушенко on 03/04/2025.
//
import UIKit

class boltViewController: UIViewController {
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Present screen", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        view.backgroundColor = .systemBlue.withAlphaComponent(0.5)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    func setupUI() {
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        ])
    }
    
    @objc
    func buttonTapped() {
        present(brownViewController(), animated: true)
    }
}
