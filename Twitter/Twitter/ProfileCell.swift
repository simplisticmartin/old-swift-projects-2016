//
//  ProfileCell.swift
//  Twitter
//
//  Created by Martin L on 2/24/16.
//  Copyright © 2016 Mertiant. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var handle: UILabel!
    @IBOutlet weak var tweetText: UILabel!
    
    var tweet: Tweet!{
        didSet{
            username.text = tweet.user!.name as? String
            handle.text = "@\(tweet.user!.screenname!)" as String
            tweetText.text = tweet.text as String?
            profileImage.setImageWithURL((tweet.user?.profileUrl)!)
            time.text = " · \((tweet?.timestamp)!)"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImage.layer.cornerRadius = 7
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
