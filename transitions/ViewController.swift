//
//  ViewController.swift
//  transitions
//
//  Created by Andrew on 2/3/19.
//  Copyright © 2019 Andrii Halabuda. All rights reserved.
//

import UIKit
import Hero

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goToGreen(_ sender: UIButton) {
        let greenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as! ViewController
        
        greenVC.hero.isEnabled = true
        greenVC.hero.modalAnimationType = .zoomSlide(direction: .left)
        self.hero.replaceViewController(with: greenVC)
    }
    
    @IBAction func goToRed(_ sender: Any) {
        let redVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC1") as! ViewController
        
        redVC.hero.isEnabled = true
        redVC.hero.modalAnimationType = .zoomSlide(direction: .right)
        self.hero.replaceViewController(with: redVC)
    }
    
    
    @IBAction func goToBlue(_ sender: UIButton) {
        let blueVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC3") as! BlueVC
        
        blueVC.hero.isEnabled = true
        blueVC.hero.modalAnimationType = .zoom
        self.hero.replaceViewController(with: blueVC)
    }
    
}

