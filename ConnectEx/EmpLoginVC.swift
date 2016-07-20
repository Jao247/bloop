import UIKit

@IBObject class EmpLoginVC: UIViewController {

	//Storyboard Variables
	@IBOutlet weak var empName: UITextField!;
	@IBOutlet weak var empPass: UITextField!;
        @IBOutlet weak var loginButton: UIButton!;

	// Class Variables

	public override func viewDidLoad() {
		super.viewDidLoad()
	}

	public override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}
