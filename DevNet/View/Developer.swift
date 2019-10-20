import UIKit
import TaggerKit

class Developer: UIViewController{
    @IBOutlet weak var imageOfDev: UIImageView!
    @IBOutlet weak var devName: UILabel!
    @IBOutlet weak var containerView: UIView!
    var tagCollection = TKCollectionView()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        add(tagCollection, toView: containerView)
        tagCollection.tags = ["C#", "Python", "ASP.NET Core", "ReactJS"]
        tagCollection.customBackgroundColor = UIColor.cyan
        
    }
}
