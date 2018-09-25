//
//  ViewController.swift
//  Coursee
//
//  Created by Duy Pham on 4/4/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chefCourseButton: UIButton!
    @IBOutlet weak var popStarCourseButton: UIButton!
    @IBOutlet weak var swiftCourseButton: UIButton!
    
    var courses = CourseStore.downloadNewCourses()

    var selectedCourse: Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.updateUI()
    }
    
    func updateUI() {
        let cheftCourse = courses[0]
        chefCourseButton.setImage(cheftCourse.buttonImage, for: [])
        let popStarCourse = courses[1]
        popStarCourseButton.setImage(popStarCourse.buttonImage, for: [])
        let swiftCourse = courses[2]
        swiftCourseButton.setImage(swiftCourse.buttonImage, for: [])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chefCourseDidTap(_ sender: Any) {
        let chefCourse = courses[0]
        selectedCourse = chefCourse
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }

    @IBAction func popStarCourseDidTap(_ sender: Any) {
        let popStarCourse = courses[1]
        selectedCourse = popStarCourse
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    @IBAction func swiftCourseDidTap(_ sender: Any) {
        let swiftCourse = courses[2]
        selectedCourse = swiftCourse
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    
    struct Storyboard {
        static let showCourseDetail = "ShowCourseDetail"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.showCourseDetail {
            if let courseDetailViewController = segue.destination as? CourseDetailViewController {
                courseDetailViewController.course = selectedCourse
            }
        }
    }
}

