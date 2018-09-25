//
//  PlayerViewController.swift
//  Coursee
//
//  Created by Duy Pham on 4/5/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var videoURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let videoURL = videoURL {
            youtubePlayerView.loadVideoURL(videoURL)
        } else {
            //show an alert view to let the user know that there's an error
            let alertController = UIAlertController(title: "Sorry", message: "There's an error for loading the video!", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        youtubePlayerView.layer.cornerRadius = 3.0
        youtubePlayerView.layer.masksToBounds = true
    }
    @IBAction func closeButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
