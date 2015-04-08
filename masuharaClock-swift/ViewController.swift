//
//  ViewController.swift
//  masuharaClock-swift
//
//  Created by 加藤 周 on 2015/04/08.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var hour1 : UIImageView!
    @IBOutlet var hour2 : UIImageView!
    @IBOutlet var minutu1 : UIImageView!
    @IBOutlet var minutu2 : UIImageView!
    @IBOutlet var second1 : UIImageView!
    @IBOutlet var second2 : UIImageView!
    var calendar = NSCalendar.currentCalendar()
    var componet = NSDateComponents()
    let flag : NSCalendarUnit = .HourCalendarUnit | .MinuteCalendarUnit | .SecondCalendarUnit
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func update() {
        componet = calendar.components(flag, fromDate: (date : NSDate()))
        hour1.image = UIImage(named: String(componet.hour/10))
        hour2.image = UIImage(named: String(componet.hour%10))
        minutu1.image = UIImage(named: String(componet.minute/10))
        minutu2.image = UIImage(named: String(componet.minute%10))
        second1.image = UIImage(named: String(componet.second/10))
        second2.image = UIImage(named: String(componet.second%10))
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

