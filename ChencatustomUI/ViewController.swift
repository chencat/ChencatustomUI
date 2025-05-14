//
//  ViewController.swift
//  ChencatustomUI
//
//  Created by chencatmail on 2025/5/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let waveButton = WaveButtonTopCut(type: .system)
        waveButton.setTitle("上波浪按鈕", for: .normal)
        waveButton.backgroundColor = .systemTeal
        waveButton.frame = CGRect(x: 40, y: 100, width: 200, height: 60)
        view.addSubview(waveButton)
    }


}

