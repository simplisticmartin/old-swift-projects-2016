//
//  ComposeViewController.swift
//  Twitter
//
//  Created by Martin L on 2/24/16.
//  Copyright © 2016 Mertiant. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var handle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
        username.text = User.currentUser?.name as String?
        handle.text = "@\((User.currentUser?.screenname)!)"
        profileImage.setImageWithURL((User.currentUser?.profileUrl)!)
        
        textView.text = "What's happening?"
        textView.textColor = UIColor.lightGrayColor()
        profileImage.layer.cornerRadius = 7

        
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
