import UIKit

@IBObject class SyncVC: UIViewController {
    
    public override func viewDidLoad() {
	super.viewDidLoad()
        let delay = 1.0 * Double(NSEC_PER_SEC);
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay));
        dispatch_after(time, dispatch_get_main_queue())
        {
            self.performSegueWithIdentifier(self.segue, sender:nil);
        }
    }

    public override func didReceiveMemoryWarning() {
	super.didReceiveMemoryWarning()
    }
}
