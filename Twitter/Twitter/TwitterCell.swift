//
//  TwitterCell.swift
//  Twitter
//
//  Created by Martin L on 2/24/16.
//  Copyright © 2016 Mertiant. All rights reserved.
//

import UIKit

class TwitterCell: UITableViewCell {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var timeStamp: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tweetText: UILabel!
    @IBOutlet weak var twitterHandle: UILabel!
    
    var tweet: Tweet! {
        didSet {
            
            timeStamp.text = " · \((tweet?.timestamp)!)"
        
            userName.text = tweet.user!.name as? String
            
            tweetText.text = tweet.text as? String
            
            profileImage.setImageWithURL(tweet.user!.profileUrl!)
            
            twitterHandle.text = "@\(tweet.user!.screenname!)" as String
        
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
