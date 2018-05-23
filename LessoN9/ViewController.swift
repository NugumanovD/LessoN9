//
//  ViewController.swift
//  LessoN9
//
//  Created by Nugumanov on 15.05.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var switchTurn: UISwitch!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func switchAction(_ sender: Any) {
        switchWork()
    }
    
    func switchWork() {
        
        myButton.isHidden = !switchTurn.isOn
        myLabel.text = switchTurn.isOn ? "Switch OFF" : "Switch ON"
        
    }
    
    func backgroundPicture() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "iPhone-7-internal-wallpaper")
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchWork()
        backgroundPicture()
    }
}

