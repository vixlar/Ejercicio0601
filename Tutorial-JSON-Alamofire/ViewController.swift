//
//  ViewController.swift
//  Tutorial-JSON-Alamofire
//
//  Created by usuario on 20/06/15.
//  Copyright (c) 2015 usuario. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet var fecha: UILabel!
    @IBOutlet var ipAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getFecha() {
        Alamofire.request(.GET, "http://date.jsontest.com").responseJSON() {
            (_, _, JSON, error) in
            if error == nil {
                let info =  JSON as! NSDictionary
                self.fecha.text = info["date"] as? String
            } else {
                println(error)
            }
        }
    }
    
    func getIP() {
        Alamofire.request(.GET, "http://ip.jsontest.com").responseJSON() {
            (_, _, JSON, error) in
            if error == nil {
                let info =  JSON as! NSDictionary
                self.ipAddress.text = info["ip"] as? String
            } else {
                println(error)
            }
        }
    }



}

