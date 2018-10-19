//
//  ViewController.swift
//  Menu Bars
//
//  Created by David E Bratton on 10/19/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewBox: UIView!
    
    var timer = Timer()
    
    @objc func processTimer() {
        print("A second has passed!")
    }
    
    func startTime() {
        //timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("processTimer"), userInfo: nil, repeats: true)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBox.isHidden = true
        
        
    }

    @IBAction func addButtonPressed(_ sender: Any) {
        viewBox.isHidden = false
        viewBox.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        startTime()
    }
    
    @IBAction func cameraButtonPressed(_ sender: Any) {
        print("Camera Button Clicked!")
        timer.invalidate()
    }
    
}

