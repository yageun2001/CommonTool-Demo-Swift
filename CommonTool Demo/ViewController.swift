//
//  ViewController.swift
//  CommonTool Demo
//
//  Created by WeiJun on 2021/5/18.
//

import UIKit
import CommonTools
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager = CLLocationManager()
        locationManager!.delegate = self
        locationManager!.requestWhenInUseAuthorization()
        
        let result = CommonTools.getJSONStringFromJSONObject(jsonObject: ["A" : "B", "C": "D", "E" : "F"])
        print("Result:\(result)")
    }
}

