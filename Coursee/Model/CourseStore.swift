//
//  CourseStore.swift
//  Coursee
//
//  Created by Duy Pham on 4/4/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import Foundation
import UIKit

class CourseStore {
    class func downloadNewCourses() -> [Course] {
        let chefCourse = Course(buttonImage: UIImage(named: "cover_chef")!, title: "Become a Pro Chef", instructor: "Gordon Ramsay", featuredImage: #imageLiteral(resourceName: "chef"), introductionVideoURL: URL(string: "https://www.youtube.com/watch?v=QBULK-w-i90")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
        
        let popStarCourse = Course(buttonImage: #imageLiteral(resourceName: "cover_pop"), title: "Become a Pop Star", instructor: "Taylor Swift", featuredImage: #imageLiteral(resourceName: "pop"), introductionVideoURL: URL(string: "https://www.youtube.com/watch?v=wyK7YuwUWsU")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
        
        let swiftCourse = Course(buttonImage: #imageLiteral(resourceName: "cover_developer"), title: "Become an iOS Developer", instructor: "Duc Tran", featuredImage: #imageLiteral(resourceName: "developer"), introductionVideoURL: URL(string: "https://www.youtube.com/watch?v=Inn2K-V3NFI")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
        
        return [chefCourse, popStarCourse, swiftCourse]
    }
}




















