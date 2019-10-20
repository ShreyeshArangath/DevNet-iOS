import UIKit
import TagListView
import FirebaseFirestore
import FirebaseCore
import Firebase


class Developer: UIViewController{
    
    @IBOutlet weak var imageOfDev: UIImageView!
    @IBOutlet weak var devName: UILabel!
    @IBOutlet weak var universityNameField: UILabel!
    
    
    var ref: DocumentReference? = nil
    
    let db = Firestore.firestore()
    
    @IBOutlet weak var tagView: TagListView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tagView.textFont = UIFont.systemFont(ofSize: 24)
        tagView.addTags(["C#", "ReactJS", "ASP.NET Core", "Python", "BackEnd Engineering"])
        imageOfDev.image=UIImage(named: "Some_Guy_On_A_Potato_grande.jpg")
        
    }
    
    //tagListView.removeAllTags()
    
    @IBAction func acceptButtonPressed(_ sender: Any) {
        let randomNumber = arc4random_uniform(4) + 1
        print(randomNumber)
        ref=db.collection("students").document(String(randomNumber))
        
        ref?.getDocument { (document, err) in
            if let err=err{
                print(err)
            } else {
                self.devName.text=document?.get("name") as! String?
            self.universityNameField.text=document?.get("university") as! String?
                
                self.tagView.removeAllTags()
                self.tagView.addTags(document?.get("skills") as! Array<String>)
                
            }
        }
        
    }
    
    
    @IBAction func declineButtonPressed(_ sender: Any) {
        
    }
}
