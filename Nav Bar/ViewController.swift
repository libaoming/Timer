//
//  ViewController.swift
//  Nav Bar
//
//  Created by 李宝明 on 16/8/23.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timerLabel: UILabel!
    var n = 210
    var timer = Timer()
    
    
    @IBAction func substractTen(_ sender: AnyObject) {
        
        if n < 10 && n > 0 {
            n -= 1
            
        }else if n <= 0 {
             n = 0
        }else {
            n -= 10
        }
       
        writeTimerLabel()
    }
    
    
    @IBAction func reset(_ sender: AnyObject) {
        n = 210
        writeTimerLabel()
        
    }
    
    @IBAction func addTen(_ sender: AnyObject) {
        
        n += 10
        writeTimerLabel()
    }
    
    @IBAction func PlayTimer(_ sender: AnyObject) {
        
        if timer.isValid {
            timer.invalidate()
        }
        
          timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    @IBAction func PauseTapped(_ sender: AnyObject) {
        
        if timer.isValid {
             timer.invalidate()
        }
        
       
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
       
      
    }
    
    func processTimer(){
        
        writeTimerLabel()
        n += 1
    }
    
    func writeTimerLabel(){
        timerLabel.text = "\(n)"
    }



}

