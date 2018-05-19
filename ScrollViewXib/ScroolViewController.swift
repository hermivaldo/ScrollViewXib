//
//  ScroolViewController.swift
//  ScrollViewXib
//
//  Created by Usuário Convidado on 19/05/18.
//  Copyright © 2018 hermivaldo. All rights reserved.
//

import UIKit

class ScroolViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addObservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeObservers()
    }
 
    func addObservers(){
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: .UIKeyboardWillHide, object: nil)
        
    }
    
    func removeObservers(){
        NotificationCenter.default.removeObserver(self)
    }
    
    
    @objc func keyBoardWillShow(notification: NSNotification){
        let userInfo = notification.userInfo ?? [:]
        let keyBoardFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        scrollView.contentInset.bottom = keyBoardFrame.size.height
        scrollView.scrollIndicatorInsets.bottom = keyBoardFrame.size.height
    }
    
    @objc func keyBoardWillHide(notification: NSNotification){
        scrollView.contentInset.bottom = 0
        scrollView.scrollIndicatorInsets.bottom = 0
        
    }
    
}
