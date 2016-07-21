import Foundation

@IBObject class APIListVC: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad();
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // Storyboard Actions
    @IBAction func update() /* - Update Data Button -  */ {
    print("Pull fresh data from server / post fresh data to server in background.")
    }
    
    @IBAction func search() /* - Search Button -  */ {
    print("Bring up an alert dialog to allow the user to search all fields.");
    }

    @IBAction func filterClear() /* - Clear Filters Button - */ {
    print("Clear any active search or filter.");
    }
}
