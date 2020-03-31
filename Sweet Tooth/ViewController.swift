
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = ""
        
    }

    @IBAction func getStartedPushed(_ sender: Any) {
        
        
        let textArray = ["welcome to sweet tooth","here we will ask you about sweet snacks","And you will get a surprise","Lets get started"]
        (sender as AnyObject).setTitle("Next",for: .normal)
        if(count < textArray.count){
            welcomeLabel.text = textArray[count]
            count += 1
        }
        else{
            (sender as AnyObject).setTitle("On to the next page",for: .normal)
            
            let navigationView = storyboard?.instantiateViewController(identifier: "QuizView") as? QuizViewController
            view.window?.rootViewController = navigationView
            view.window?.makeKeyAndVisible() 
        }
        
        
    }
    
}

