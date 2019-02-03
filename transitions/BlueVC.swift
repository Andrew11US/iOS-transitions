//
//  BlueVC.swift
//  transitions
//
//  Created by Andrew on 2/3/19.
//  Copyright © 2019 Andrii Halabuda. All rights reserved.
//

import UIKit
import Hero

class BlueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backToGreen(_ sender: UIButton) {
        let greenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as! ViewController
        
        greenVC.hero.isEnabled = true
        greenVC.hero.modalAnimationType = .zoomOut
        self.hero.replaceViewController(with: greenVC)
    }
    
}
