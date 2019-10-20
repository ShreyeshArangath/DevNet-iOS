//
//  StudentDeveloper.swift
//  DevNet
//
//  Created by Shreyesh on 10/19/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import Foundation

class StudentDeveloper {
    var name: String
    var email: String
    var skills: Array<String>
    var location: String
    var university: String
    init(name: String, email:String, skills: Array<String>, location: String, university:String) {
        self.name=name
        self.email=email
        self.skills=skills
        self.location=location
        self.university=university
    }
}
