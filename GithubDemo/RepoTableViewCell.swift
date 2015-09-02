//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Will Dalton on 9/2/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var forkCountLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerImageView: UIImageView!

    var repo: GithubRepo! {
        didSet {
            repoNameLabel.text = repo.name
            descriptionLabel.text = repo.description
            starCountLabel.text = "\(repo.stars!)"
            forkCountLabel.text = "\(repo.forks!)"
            ownerLabel.text = repo.ownerHandle
            ownerImageView.setImageWithURL(NSURL(string: repo.ownerAvatarURL!))
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
