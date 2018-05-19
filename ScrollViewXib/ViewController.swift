//
//  ViewController.swift
//  ScrollViewXib
//
//  Created by Usuário Convidado on 19/05/18.
//  Copyright © 2018 hermivaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: .system)
        button.setTitle("Abrir nova tela", for: .normal)
        button.frame = CGRect(x: (view.frame.size.width - 100) / 2, y: 100, width: 120, height: 30)
        button.addTarget(self, action: #selector(showSecondScreen), for: .touchUpInside)
        view.addSubview(button)
    }
    
    
    @objc func showSecondScreen() {
        let secondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        navigationController?.show(secondViewController, sender: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

