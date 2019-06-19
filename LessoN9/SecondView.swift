//
//  SecondView.swift
//  LessoN9
//
//  Created by Nugumanov on 15.05.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var edgeButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "iPhone-7-internal-wallpaper")
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func hideSlider () {
        slider.isHidden = true
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { _ in
            self.slider.isHidden = false
        })
    }
    
    @IBAction func hidden(_ sender: Any) {
        hideSlider()
    }
    
    @IBAction func changeValueSlider(_ sender: UISlider) {
       myLabel.text = String(slider.value)
    }
    
    @IBAction func moveRightButton(_ sender: UIButton) {

        
    }
    @IBAction func backToMenu() {
    }
    
    
}
