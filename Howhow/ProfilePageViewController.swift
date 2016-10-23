//
//  ProfilePageViewController.swift
//  Howhow
//
//  Created by David on 2016/10/23.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

class ProfilePageViewController: UIViewController {

	@IBOutlet weak var avatarImageView: UIImageView!
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var userEmailLabel: UILabel!
	
	@IBOutlet weak var postsCountLabel: UILabel!
	@IBOutlet weak var followersCountLabel: UILabel!
	@IBOutlet weak var followingCountLabel: UILabel!
	
	@IBOutlet weak var notificationLabel: UILabel!
	@IBOutlet weak var notificationSwitch: UISwitch!
	
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
		avatarImageView.clipsToBounds = true
		avatarImageView.image = UIImage(named: "miranda.jpg")
		
		usernameLabel.text = "Miranda Kerr"
		userEmailLabel.text = "super_sexy@gmail.com"
		
		postsCountLabel.text = "80"
		followersCountLabel.text = "2000"
		followingCountLabel.text = "168"
		
		let ud = UserDefaults.standard
		let isOn = ud.bool(forKey: "notification key")
		notificationSwitch.isOn = isOn
		
		if notificationSwitch.isOn {
			// 打開的
			notificationLabel.text = "on"
		} else {
			// 關閉的
			notificationLabel.text = "off"
		}
    }

	@IBAction func notificationSwitchValueChanged(_ sender: UISwitch) {
		if sender == notificationSwitch {
			let ud = UserDefaults.standard
			ud.set(notificationSwitch.isOn, forKey: "notification key")
			ud.synchronize()
			if notificationSwitch.isOn {
				// 打開的
				notificationLabel.text = "on"
			} else {
				// 關閉的
				notificationLabel.text = "off"
			}
		}
		
		
	}
	
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
