
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStartedPushed(_ sender: Any) {
        welcomeLabel.text = "Let's begin this epic journey now"
    }
    
}

