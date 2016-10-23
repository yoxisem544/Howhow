//
//  MainCollectionViewCell.swift
//  Howhow
//
//  Created by David on 2016/10/23.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
	
	@IBOutlet weak var avatarImageView: UIImageView!
	
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var timeLabel: UILabel!
	
	@IBOutlet weak var photoImageView: UIImageView!
	
	@IBOutlet weak var postContnetLabel: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
		// configuration
	}
	
}
