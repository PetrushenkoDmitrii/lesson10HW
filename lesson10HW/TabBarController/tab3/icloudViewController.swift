//
//  icloudViewController.swift
//  lesson10HW
//
//  Created by Дмитрий Петрушенко on 03/04/2025.
//

import UIKit

class icloudViewController: UIViewController {
    let HelloLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    init(customText: String) {
        super.init(nibName: nil, bundle: nil)
        HelloLabel.text = customText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstrains()
    }
    
    func setupUI() {
        HelloLabel.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed.withAlphaComponent(0.5)
        view.addSubview(HelloLabel)
    }
    
    func setupConstrains() {
        NSLayoutConstraint.activate([
            HelloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HelloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            HelloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            HelloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120)
        ])
    }
}
