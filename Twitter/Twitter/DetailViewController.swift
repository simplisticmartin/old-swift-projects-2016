//
//  DetailViewController.swift
//  Twitter
//
//  Created by Martin L on 2/24/16.
//  Copyright © 2016 Mertiant. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
     @IBOutlet weak var retweet: UIButton!

    @IBOutlet weak var profilePicture1: UIImageView!

    
    @IBOutlet weak var reply: UIButton!
    @IBOutlet weak var favorite: UIButton!
    
    @IBOutlet weak var username1: UILabel!
    @IBOutlet weak var handle1: UILabel!
    
    @IBOutlet weak var tweet1: UILabel!
    
    var user: User?
    var tweet: Tweet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username1.text = tweet.user!.name as? String
        
    
        profilePicture1.setImageWithURL(tweet.user!.profileUrl!)
        tweet1.text = tweet.text as? String
        handle1.text = "@\(tweet.user!.screenname!)" as String
        
        profilePicture1.layer.cornerRadius = 7
        
        //name.text = "\(tweet.favoritesCount)" as? String
                            //.retweetCount
        
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
