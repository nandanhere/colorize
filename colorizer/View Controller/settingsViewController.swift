//
//  settingsViewController.swift
//  colorizer
//
//  Created by Nandan on 09/02/20.
//  Copyright © 2020 Nandan. All rights reserved.
//

import UIKit

class settingsViewController: UITableViewController {

@IBOutlet weak var hsb: UISwitch!
@IBOutlet weak var rgb: UISwitch!
override func viewDidLoad() {
        super.viewDidLoad()
hsb.isOn = !truth
rgb.isOn = truth

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

@IBAction func rgbf(_ sender: Any) {
if rgb.isOn {
truth = true
hsb.setOn(false, animated: true)}
else
{
truth = false
hsb.setOn(true, animated: true)
}
 tt = true
}

@IBAction func hsb(_ sender: Any) {
if hsb.isOn {
truth = false
rgb.setOn(false, animated: true)
}
else{
truth = true
rgb.setOn(true, animated: true)
}
 tt = true
}
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  // Get the presented navigationController and the view controller it contains
  let navigationController = segue.destination as! UINavigationController
  let modalViewController = navigationController.topViewController
    
  // Set the modal view controller to be the delegate of the presentationController for this presentation,
  // so that modal view controller can respond to attempted dismissals
navigationController.presentationController?.delegate = modalViewController as? UIAdaptivePresentationControllerDelegate
}
 

 
     

}
