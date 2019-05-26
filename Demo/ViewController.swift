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
    
    var wave: WaveAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wave = WaveAnimationView(frame: CGRect(origin: .zero, size: lapView.bounds.size), color: UIColor.blue.withAlphaComponent(0.5))
        lapView.addSubview(wave)
        //superView.addSubView(WaveAnimationView)
        wave.startAnimation()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        wave.stopAnimation()
        
    }
    
    
    @IBAction func slide(_ sender: UISlider) {
        
        wave.setProgress(sender.value)
        
        print("aa",sender.value)
        print("bb",wave.progress)
        
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

