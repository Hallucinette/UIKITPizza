//
//  ViewController.swift
//  UIkitPizza
//
//  Created by Amelie Pocchiolo on 21/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
//    private let horaireText: UITextView = {
//        let horaireText = UITextView()
//        horaireText.text = "Toto"
//        horaireText.textAlignment = .left
//        horaireText.translatesAutoresizingMaskIntoConstraints = false
//        horaireText.backgroundColor = .black
//        return horaireText
//    }()
    
    private let saucissonImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Saucisson")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let mapImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Map")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var goToMenu: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Accéder au menu"
        config.buttonSize = .large
        config.cornerStyle = .large
        config.background.backgroundColor = .red
        config.titleAlignment = .center
        config.attributedTitle?.font = .boldSystemFont(ofSize: 20)
        
        let btn = UIButton(configuration: config)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(didTapGoToMenu), for: .touchUpInside)
        return btn
    }()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
}

private extension ViewController {
    func setup() {
        self.view.backgroundColor = .white
        self.view.addSubview(saucissonImageView)
//        self.view.addSubview(horaireText)
        self.view.addSubview(mapImageView)
        self.view.addSubview(goToMenu)
        NSLayoutConstraint.activate([
            
            //IMAGE SAUCISSOM
            saucissonImageView.heightAnchor.constraint(equalToConstant: 300),
            saucissonImageView.widthAnchor.constraint(equalToConstant: 300),
            saucissonImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            saucissonImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
//            //HORAIRE TEXT
//            horaireText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
//            horaireText.heightAnchor.constraint(equalToConstant: 100),
//            horaireText.widthAnchor.constraint(equalToConstant: 300),
//            horaireText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            horaireText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            //IMAGE MAP
            mapImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            mapImageView.heightAnchor.constraint(equalToConstant: 300),
            mapImageView.widthAnchor.constraint(equalToConstant: 300),
            mapImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mapImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            //BUTTON
            goToMenu.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            goToMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            goToMenu.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    
    @objc func didTapGoToMenu(sender: UIButton) {
        print("didTapGoToMenu")
    }
}

