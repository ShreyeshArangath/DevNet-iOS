//
//  Mentor.swift
//  DevNet
//
//  Created by Shreyesh on 10/19/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import Foundation

class Mentor {
    var name: String
    var email: String
    var skills: Array<String>
    var position: String
    var company: String
    
    init(name: String, email: String, skills: Array<String>, position:String, company: String){
        self.name=name
        self.email=email
        self.skills=skills
        self.position=position
        self.company=company
        
    }
}
