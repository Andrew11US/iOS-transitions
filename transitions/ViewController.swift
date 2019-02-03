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
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goToGreen(_ sender: UIButton) {
        let greenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as! ViewController
        greenVC.isHeroEnabled = true
        greenVC.heroModalAnimationType = .zoomSlide(direction: HeroDefaultAnimationType.Direction.left)
        self.hero_replaceViewController(with: greenVC)
    }
    
    @IBAction func goRedPressed(_ sender: Any) {
        let redVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC1") as! ViewController
        redVC.isHeroEnabled = true
        redVC.heroModalAnimationType = .zoomSlide(direction: HeroDefaultAnimationType.Direction.right)
        self.hero_replaceViewController(with: redVC)
    }
    
}

