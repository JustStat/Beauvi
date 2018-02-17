 import UIKit

class PlaceListViewController: UIViewController, PlaceListViewInput {
    var output: PlaceListViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.output.viewDidAppear()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentAlert(message: String) {
        let controller = UIAlertController(title: "Test", message: message, preferredStyle: UIAlertControllerStyle.alert)
        present(controller, animated: true, completion: nil)
    }
}
        
