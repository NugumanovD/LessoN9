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

    @IBOutlet weak var buttonContraint: NSLayoutConstraint!
    
    @IBAction func hidden(_ sender: Any) {
        slider.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 3, options: [.allowAnimatedContent], animations: {
            self.slider.alpha = 1
        })
//        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { _ in
//            self.slider.isHidden = false
//        })
    }
    @IBAction func changeValueSlider(_ sender: UISlider) {
        myLabel.text = String(format: "%0.2f", slider.value)
        buttonContraint.constant = CGFloat(slider.value)
        
    }
    @IBAction func moveRightButton(_ sender: UIButton) {
        buttonContraint.constant = 0
    }
    @IBAction func backToMenu() {
    }
    
    func backgroundPicture() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "iPhone-7-internal-wallpaper")
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundPicture()
        
        
    }
    // Commit
    
    
}
