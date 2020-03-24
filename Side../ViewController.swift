//
//  ViewController.swift
//  Side..
//
//  Created by Mohamed Abd el Aty on 3/23/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var bluerView: UIVisualEffectView!
    
    @IBOutlet var sideView: UIView!
    @IBOutlet var viewConestrain: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        bluerView.layer.cornerRadius = 15
        sideView.layer.shadowColor = UIColor.black.cgColor
        sideView.layer.shadowOpacity = 0.8
        sideView.layer.shadowOffset = CGSize(width: 5, height: 0)
        viewConestrain.constant = -175
        
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed {
            
            let transltion = sender.translation(in: self.view).x
            if transltion > 0 {
                
                if viewConestrain.constant < 20 {
                    UIView.animate(withDuration: 0.2,animations:  {
                                       self.viewConestrain.constant += transltion/10
                                       self.view.layoutIfNeeded()
                                   })
                }
                
            } else {
                if viewConestrain.constant > -175 {
                UIView.animate(withDuration: 0.2,animations:  {
                    self.viewConestrain.constant += transltion/10
                    self.view.layoutIfNeeded()
                })
            
            
        } else if sender.state == .ended {
            
                    if viewConestrain.constant < -100 {
                    UIView.animate(withDuration: 0.2,animations:  {
                    self.viewConestrain.constant += transltion/10
                    self.view.layoutIfNeeded()
                                  })
                    
                    
        }
                    else {
                        UIView.animate(withDuration: 0.2,animations:  {
                        self.viewConestrain.constant += 0
                        self.view.layoutIfNeeded()
                                      })
                        
                    }}}}}}
