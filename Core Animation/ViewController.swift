//
//  ViewController.swift
//  Core Animation
//
//  Created by Fauzan Achmad on 21/01/20.
//  Copyright © 2020 Fauzan Achmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var playBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let layer = CALayer()
        
        layer.frame = self.whiteView.bounds
    }

    @IBAction func playBtnTapped(_ sender: Any) {
        UIView.animate(withDuration: 3, animations: {
            self.orangeView.layer.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1) // Tutorial Ganti Warna Background
            self.orangeView.layer.cornerRadius = 100 // Bikin box nya rounded
            self.orangeView.layer.borderWidth = 2
            self.orangeView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
          
            let layer = CALayer()
            layer.frame = self.whiteView.bounds
            
            self.orangeView.layer.addSublayer(layer)
            self.orangeView.layer.contentsGravity = .bottomRight
        })
    }
    
}
