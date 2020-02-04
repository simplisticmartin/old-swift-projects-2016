//
//  TweetCell.swift
//  Twitter
//
//  Created by Martin L on 2/24/16.
//  Copyright © 2016 Mertiant. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var profileImage: UITableView!
    
    
    
    var tweet: Tweet! {
        didSet {
            
            .text = tweet.user!.name as? String
            .text = "@\(tweet.user!.screenname!)" as? String
            .text = tweet.textbox as? String
            .setImageWithURL(tweet.user!.profileURL!)
            .text = "\(tweet.retweetCount)" as? String
            .text = "\(tweet.favoritesCount)" as? String
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
