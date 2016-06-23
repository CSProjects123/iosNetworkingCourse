//
//  ViewController.swift
//  ImageRequest
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageURL = NSURL( string: "http://www.atpworldtour.com/en/news/www.atpworldtour.com/~/media/images/news/2016/01/07/12/28/federer-brisbane-2016-thursday2.jpg")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(imageURL) { (data, response, error) -> Void in
            if error==nil {
                let downloadedImage = UIImage(data: data!)
                performUIUpdatesOnMain{
                    self.imageView.image = downloadedImage
                }
            }
            
        }
        task.resume()
        
        // TODO: Add all the networking code here!
    }
}
