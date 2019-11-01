//
//  MentorsView.swift
//  DevNet
//
//  Created by Shreyesh on 10/20/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import TagListView
import FirebaseFirestore
import FirebaseCore
import Firebase

class MentorsView: UIViewController {

    
    @IBOutlet weak var mentorPicture: UIImageView!
    @IBOutlet weak var mentorName: UILabel!
    @IBOutlet weak var mentorSkills: TagListView!
    @IBOutlet weak var almaMatter: UILabel!
    
    let images = ["EulerLeonhard300px.jpg", "jeff.jpg", "schrodinger.jpg", "712Bi59beRL._SL1500_.jpg"]
    var ref: DocumentReference? = nil
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mentorSkills.textFont = UIFont.systemFont(ofSize: 24)
        mentorSkills.addTags(["Project Management", "Cloud Operations", "Application Development"])
        mentorPicture.image=UIImage(named: images[0])
    }
    
    @IBAction func swipeRightOnMentor(_ sender: UIButton) {
        let randomNumber = arc4random_uniform(3) + 1
        print(randomNumber)
        ref=db.collection("mentors").document(String(randomNumber))
        
        ref?.getDocument { (document, err) in
            if let err=err{
                print(err)
                
            }
            else {
                self.mentorName.text=document?.get("name") as! String?
                self.almaMatter.text=document?.get("university") as! String?
                
                self.mentorSkills.removeAllTags()
                self.mentorSkills.addTags(document?.get("skills") as! Array<String>)
                
                self.mentorPicture.image = UIImage(named: self.images[Int(randomNumber)])
                
            }
            
        }
    }
    
   
}
