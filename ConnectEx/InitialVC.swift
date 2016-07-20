import UIKit

@IBObject class InitialVC: UIViewController {

    // Storyboard variables
    @IBOutlet weak var typeOfSegue: UITextField!;
    @IBOutlet weak var button: UIButton;

    public var segue: String = "";
    
    public override func viewDidLoad() {
	super.viewDidLoad()
    }

    public func chooseSegue(type: String)
    {
        switch(type)
        {
			case "0":
				segue = "loadServerLogin";
			case "1":
				segue = "loadEmployeeLogin";
			case "2":
				segue = "updateData";
			default:
				segue = "loadServerLogin";		
		}
    }

    public override func didReceiveMemoryWarning() {
	super.didReceiveMemoryWarning()
    }

    // Storyboard Actions
    @IBAction func loadScene(sender: AnyObject)
    {
        chooseSegue(typeOfSegue.text!);
        let delay = 2.0 * Double(NSEC_PER_SEC);
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay));
        dispatch_after(time, dispatch_get_main_queue())
        {
            self.performSegueWithIdentifier(self.segue, sender: nil);
        }
    }
}
