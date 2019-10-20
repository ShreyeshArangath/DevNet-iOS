//
//  StudentDeveloper.swift
//  DevNet
//
//  Created by Shreyesh on 10/19/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit

class StudentDeveloper {
    var image: UIImage
    var name: String
    var email: String
    var skills: Array<String>
    var location: String
    var university: String
    init(image:UIImage ,name: String, email:String, skills: Array<String>, location: String, university:String) {
        self.name=name
        self.email=email
        self.skills=skills
        self.location=location
        self.university=university
        self.image=image
    }
}
