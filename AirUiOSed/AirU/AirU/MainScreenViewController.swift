//
//  MainScreenViewController.swift
//  AirU
//
//  Created by Martin L on 2/13/16.
//  Copyright © 2016 Martin L. All rights reserved.
//

import UIKit
import SwiftyJSON

class MainScreenViewController: UIViewController {

    @IBOutlet weak var connectBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let blueColor = UIColor(red: 23/255.0, green: 189/255.0, blue: 167/255.0, alpha: 1.0)
        view.backgroundColor = blueColor

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
