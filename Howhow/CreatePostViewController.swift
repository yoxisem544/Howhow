//
//  CreatePostViewController.swift
//  Howhow
//
//  Created by David on 2016/10/29.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit
import Photos

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
		openPhotoLibrary()
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
	
	func openPhotoLibrary() {
		// check permission
		if PHPhotoLibrary.authorizationStatus() == .authorized {
			// open photo library
			let imagePicker = UIImagePickerController()
			imagePicker.delegate = self
			imagePicker.sourceType = .photoLibrary
			self.present(imagePicker, animated: true, completion: nil)
		} else {
			// need permission
			needPermission()
		}
		
	}
	
	func needPermission() {
		if PHPhotoLibrary.authorizationStatus() == .notDetermined {
			PHPhotoLibrary.requestAuthorization({ (status) in
				self.openPhotoLibrary()
			})
		} else {
			// user dont give us permission
			let url = URL(string: UIApplicationOpenSettingsURLString)!
			UIApplication.shared.open(url, options: [:], completionHandler: nil)
		}
	}

	
	

	
}

extension CreatePostViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
		let image = info[UIImagePickerControllerOriginalImage] as? UIImage
		photoImageView.image = image
		picker.dismiss(animated: true, completion: nil)
	}
	
	func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
		picker.dismiss(animated: true, completion: nil)
	}
	
}












































