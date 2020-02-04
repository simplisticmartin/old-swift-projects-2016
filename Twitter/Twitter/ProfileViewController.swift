//
//  ProfileViewController.swift
//  Twitter
//
//  Created by Martin L on 2/24/16.
//  Copyright © 2016 Mertiant. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var handle: UILabel!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    
    @IBOutlet weak var tweetsNumber: UILabel!
    @IBOutlet weak var following: UILabel!
    
    @IBOutlet weak var followers: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var tempImage: UIImage!
    
    var tweets: [Tweet]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        username.text = User.currentUser?.name as String?
        handle.text = "@\((User.currentUser?.screenname)!)"
        profileImage.setImageWithURL((User.currentUser?.profileUrl)!)
        
        followers.text = "\((User.currentUser?.userFollowersCount)!)"
        following.text = "\((User.currentUser?.userFollowingCount)!)"
        tweetsNumber.text = "\((User.currentUser?.userTweetCount)!)"
        
        //self.tweets = tweets
        self.tableView.reloadData()
        
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        if tweets != nil{
            return (tweets?.count)!
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("ProfileCell", forIndexPath: indexPath) as! ProfileCell
        
        cell.tweet = tweets![indexPath.row]
        
        return cell
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
