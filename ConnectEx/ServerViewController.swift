import UIKit

@IBObject class ServerViewController : UIViewController, IUITextFieldDelegate {
    
    // Variables from storyboard
    @IBOutlet weak var cusID: UITextField!;
    @IBOutlet weak var cusPass: UITextField!;
    @IBOutlet weak var isPersonal: UISwitch!;
    @IBOutlet weak var setupButton: UIButton!;

    // Class variables
    public var id: String?;
    public var passcode: String?;
    
    public override func viewDidLoad() {
 		super.viewDidLoad()
        cusID.delegate = self;
        cusPass.delegate = self;
    }
    
    public override func didReceiveMemoryWarning() {
 	super.didReceiveMemoryWarning()
    }

    func prepareForSegue(sender: UIStoryboardSegue)
    {
        if (sender === setupButton)
        {
            if (isPersonal.isOn)
            {
                id = cusID.text!;
                passcode = cusPass.text!;
            }
            
        }
    }
}
