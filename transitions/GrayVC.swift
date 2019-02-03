//
//  GrayVC.swift
//  transitions
//
//  Created by Andrew on 2/3/19.
//  Copyright © 2019 Andrii Halabuda. All rights reserved.
//

import UIKit

class GrayVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToBlue(_ sender: UIButton) {
        let blueVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC3") as! BlueVC
        
        blueVC.hero.isEnabled = true
        blueVC.hero.modalAnimationType = .uncover(direction: .up)
        self.hero.replaceViewController(with: blueVC)
    }


}
