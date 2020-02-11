//
//  webSearchViewController.swift
//  colorizer
//
//  Created by Nandan on 09/02/20.
//  Copyright © 2020 Nandan. All rights reserved.
//

import UIKit
import WebKit

class webSearchViewController: UIViewController {

@IBOutlet weak var Webber: WKWebView!
override func viewDidLoad() {
        super.viewDidLoad()
     var string = (discoveredColor?.name)!
     string = string.replacingOccurrences(of: " ", with: "+")
     print(string)
     let url = URL(string: "https://www.amazon.in/s?k=\(string)+watercolor")
     let request = URLRequest(url: url!)
     Webber.load(request)

        // Do any additional setup after loading the view.
    }
    

    //back button was discarded since it would be more sensible for the ui to be modal(card popup) based//

}
