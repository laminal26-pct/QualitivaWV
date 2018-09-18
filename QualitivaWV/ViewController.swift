//
//  ViewController.swift
//  QualitivaWV
//
//  Created by Laminal Falah on 13/09/18.
//  Copyright © 2018 Laminal Falah. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://qualitiva.id/page/login")
        if let unwrappedURL = url {
            let req = URLRequest(url: unwrappedURL)
            let ses = URLSession.shared
            let task = ses.dataTask(with: req) { (data, response, error) in
                if error == nil {
                    self.webView.load(_:req)
                } else {
                    print("Error : \(String(describing: error))")
                }
            }
            task.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

