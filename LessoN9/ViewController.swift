//
//  ViewController.swift
//  LessoN9
//
//  Created by Nugumanov on 15.05.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func switchAction(_ sender: Any) {
        switchWork()
    }
    @IBOutlet weak var switchTurn: UISwitch!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    func switchWork() {
        
        myButton.isHidden = !switchTurn.isOn
        myLabel.text = switchTurn.isOn ? "Switch OFF" : "Switch ON"
        
    }
    
    func assignbackground(){
        let background = UIImage(named: "iPhone-7-internal-wallpaper")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        switchWork()
        
    }
}

