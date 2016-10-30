//
//  MainCollectionViewController.swift
//  Howhow
//
//  Created by David on 2016/10/23.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MainCollectionViewController: UICollectionViewController {

	@IBOutlet weak var MainFlowLayout: UICollectionViewFlowLayout!
	
	var posts: [PostData] = [PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-01.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-02.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-03.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-04.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-05.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-06.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-07.jpeg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-08.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-09.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-10.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-11.jpeg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-12.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-13.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-14.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-15.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-16.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-17.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo"),
	                         PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "September 28, 2016 at 14:25", photo: UIImage(named: "demo-18.jpg")!, content: "Lorem ipsum dolor sit amet, consectetuer adipisI elit desco. #demo")]
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

		MainFlowLayout.estimatedItemSize = MainFlowLayout.itemSize

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
		print(segue.identifier)
		if segue.identifier == "to create post segue" {
			let vc = segue.destination as? CreatePostViewController
			vc?.delegate = self
		}
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return posts.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MainCollectionViewCell
		
		let post = posts[indexPath.row]
    
        // Configure the cell
		// cell.avatarImageView.image = UIImage(named: "Miranda.png")
		cell.avatarImageView.image = post.avatarImage
		cell.usernameLabel.text = post.username
		cell.timeLabel.text = post.time
		
		cell.photoImageView.image = post.photo
		// cell.photoImageView.image = UIImage(named: "demo-05.png")
		cell.postContnetLabel.text = post.content
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

extension MainCollectionViewController : CreatePostViewControllerDelegate {
	
	func createPostViewController(didFinishCreate post: PostData) {
		posts.insert(post, at: 0)
		collectionView?.reloadData()
	}
	
}












