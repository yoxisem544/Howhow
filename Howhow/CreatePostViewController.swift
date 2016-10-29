//
//  CreatePostViewController.swift
//  Howhow
//
//  Created by David on 2016/10/29.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController {

	@IBOutlet weak var contentTextView: UITextView!
	
	@IBOutlet weak var photoImageView: UIImageView!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func cancelButtonClicked(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func doneButtonClicked(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func openCameraButtonClicked(_ sender: Any) {
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
