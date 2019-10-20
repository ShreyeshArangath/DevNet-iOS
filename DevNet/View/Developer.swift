import UIKit
import TagListView

class Developer: UIViewController{
    
    @IBOutlet weak var imageOfDev: UIImageView!
    @IBOutlet weak var devName: UILabel!
    
    @IBOutlet weak var tagView: TagListView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tagView.textFont = UIFont.systemFont(ofSize: 24)
        tagView.addTags(["C#", "ReactJS", "ASP.NET Core", "Python", "BackEnd Engineering"])
        imageOfDev.image=UIImage(named: "Some_Guy_On_A_Potato_grande.jpg")
        
    }
    @IBAction func acceptButtonPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func declineButtonPressed(_ sender: Any) {
        
    }
}
