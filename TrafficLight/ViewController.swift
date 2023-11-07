//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр Гончаров on 03.11.2023.
//


import UIKit


final class ViewController: UIViewController {
    
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    
    @IBOutlet var changeButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeButtom.layer.cornerRadius = 10
        
        setting(greenView)
        setting(yellowView)
        setting(redView)
        
        func setting(_ view: UIView) {
            view.layer.cornerRadius = 60
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            view.alpha = 0.25
            
        }
    }


    @IBAction func turnButtomAction(_ sender: UIButton) {

        if greenView.alpha != 1 && yellowView.alpha != 1 && redView.alpha != 1 {
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.25
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.25
            redView.alpha = 1
        } else if redView.alpha == 1 {
            redView.alpha = 0.25
        }
        
    }
}

