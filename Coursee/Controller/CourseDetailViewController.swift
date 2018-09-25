//
//  CourseDetailViewController.swift
//  Coursee
//
//  Created by Duy Pham on 4/4/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {

    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseDescriptionTextView: UITextView!
    @IBOutlet weak var courseFeaturedImageView: UIImageView!

    var course: Course! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        courseFeaturedImageView.image = course.featuredImage
        
        courseTitleLabel.text = course.title
        courseDescriptionTextView.text = course.description
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])
        

        self.navigationItem.title = course.instructor
        
        joinCourseButton.layer.cornerRadius = 3.0
        joinCourseButton.layer.masksToBounds = true
    }
    @IBAction func playButtonDidTap(_ sender: Any) {
    }
    @IBAction func joinButtonDidTap(_ sender: Any) {
        let alertController = UIAlertController(title: "Congratulations!", message: "You just enrolled in this \(course.title) successfully!", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    struct StoryBoard {
        static let presentPlayer = "PresentPlayer"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.presentPlayer {
            if let playerViewController = segue.destination as? PlayerViewController {
                playerViewController.videoURL = course.introductionVideoURL
            }
        }
    }
}























