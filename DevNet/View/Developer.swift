import UIKit
import TagListView
import FirebaseFirestore
import FirebaseCore
import Firebase


class Developer: UIViewController{
    
    @IBOutlet weak var imageOfDev: UIImageView!
    @IBOutlet weak var devName: UILabel!
    
    
    var ref: DocumentReference? = nil
    
    let db = Firestore.firestore()
    
    @IBOutlet weak var tagView: TagListView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tagView.textFont = UIFont.systemFont(ofSize: 24)
        tagView.addTags(["C#", "ReactJS", "ASP.NET Core", "Python", "BackEnd Engineering"])
        imageOfDev.image=UIImage(named: "Some_Guy_On_A_Potato_grande.jpg")
        
    }
    @IBAction func acceptButtonPressed(_ sender: Any) {
        let randomNumber = arc4random_uniform(4) + 1
        ref=db.collection("cities").document(String(randomNumber))
        
        ref?.getDocument { (document, err) in
            if case let err=err{
                print(err)
            } else {
                print(document?.data())
            }
        }
        
    }
    
    
    @IBAction func declineButtonPressed(_ sender: Any) {
        
    }
}
