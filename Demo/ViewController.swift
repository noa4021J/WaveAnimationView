//
//  ViewController.swift
//  Demo
//
//  Created by Syunsuke Nakao on 2019/05/12.
//  Copyright © 2019 Syunsuke Nakao. All rights reserved.
//

import UIKit
import WaveAnimationView

class ViewController: UIViewController {

    @IBOutlet weak var lapView: UIView!
    
    var wave: !
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wave = WaveProgressView(frame: CGRect(x: 10, y: 10, width: lapView.frame.width-20, height: lapView.frame.height-20), color: UIColor.blue.withAlphaComponent(0.5))
        wave.layer.cornerRadius = wave.frame.width/2
        wave.clipsToBounds = true
        
        lapView.layer.cornerRadius = lapView.bounds.width/2
        lapView.layer.borderColor = UIColor.blue.cgColor
        lapView.layer.borderWidth = 4
        lapView.clipsToBounds = true
        lapView.addSubview(wave)
        
        wave.startAnimation()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        wave.stopAnimaiton()
        
    }
    
    
    @IBAction func slide(_ sender: UISlider) {
        
        self.wave.setProgress(to: sender.value)
        
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            wave.frontColor = UIColor.blue.withAlphaComponent(0.5)
            wave.backColor = UIColor.blue.withAlphaComponent(0.5)
            lapView.layer.borderColor = UIColor.blue.cgColor
        case 1:
            wave.frontColor = UIColor.red.withAlphaComponent(0.5)
            wave.backColor = UIColor.red.withAlphaComponent(0.5)
            lapView.layer.borderColor = UIColor.red.cgColor
        case 2:
            wave.frontColor = UIColor.green.withAlphaComponent(0.5)
            wave.backColor = UIColor.green.withAlphaComponent(0.5)
            lapView.layer.borderColor = UIColor.green.cgColor
        default:
            break
        }
        
    }
    
}

