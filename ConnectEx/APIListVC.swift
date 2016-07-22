import UIKit

@IBObject class APIListVC: UIViewController{

	@IBOutlet weak var tableView: UITableView!;

    var apis = [API]();
    
    public override func viewDidLoad() {
        super.viewDidLoad();

        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "api")
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func addSampleData()
    {
        //(n: String, isU: Bool, f: String, lU: String, r: Int, nU: String)
        let api0 = API(n: "Test1", isU: true, f: "1 Day(s)", lU: "01 Jan 01:00", r: 0, nU: "5 M");
        let api1 = API(n: "Test2", isU: true, f: "2 Day(s)", lU: "28 Feb 23:00", r: 0, nU: "20 M");
        let api2 = API(n: "Test3", isU: true, f: "3 Day(s)", lU: "03 Jun 01:00", r: 0, nU: "14 M");
        let api3 = API(n: "Test4", isU: true, f: "1 Year(s)", lU: "01 Jul 01:00", r: 0, nU: "3 D");
        let api4 = API(n: "Test5", isU: true, f: "2 Week(s)", lU: "01 Aug 01:00", r: 0, nU: "2 H");
        let api5 = API(n: "Test6", isU: true, f: "2 Month(s)", lU: "01 Apr 01:00", r: 0, nU: "1 H");

        apis = [api0, api1, api2, api3, api4, api5];
    }
   
    /*Table View Delegate.
	public func tableView(tableView: UITableView, numberOfRowsInSection section: NSInteger) -> NSInteger {
			return apis.count;
	}

    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCellWithIdentifier("api") as! APIVCell;
        return cell;
    }

    public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    */
    // Storyboard Actions
    @IBAction func update() /* - Update Data Button -  */ {
    print("Pull fresh data from server / post fresh data to server in background.")
    }
    
    @IBAction func search() /* - Search Button -  */ {
        var alert = UIAlertController(title: "Test", message: "Search", preferredStyle: .Alert);
		alert.addAction(UIAlertAction(title: "Close", style: .Cancel, handler: nil))
		alert.addAction(UIAlertAction(title: "Search", style: .Default, handler: {action in		
			print("Thingy");
		}))
  		self.presentViewController(alert, animated: true, completion: nil);
    }

    @IBAction func setFilter() /* - Filters Button - */ {
	let actionSheet = UIAlertController(title: "Filter", message: "How would you like to filter the APIs?", preferredStyle: .ActionSheet);
        
        let cancelFilter = UIAlertAction(title: "Cancel", style: .Cancel, handler: {(action) in self.filterClear(); });

        let directionAction = UIAlertAction(title: "Direction", style: .Default, handler: { (action) in
            let directionPopUp = UIAlertController(title: "Direction", message: "Which direction do you want to filter to.", preferredStyle: .Alert);
            let upAction       = UIAlertAction(title: "Upload",   style: .Default, handler: nil);
            let downAction     = UIAlertAction(title: "Download", style: .Default, handler: nil);
            directionPopUp.addAction(upAction);
            directionPopUp.addAction(downAction);
            directionPopUp.addAction(cancelFilter);
            self.presentViewController(directionPopUp, animated: true, completion: nil);
        })
        let statusAction = UIAlertAction(title: "Status", style: .Default, handler: { (action) in
            let statusPopUp     = UIAlertController(title: "Status", message: "Which status do you want to filter to.", preferredStyle: .Alert);
            let activeAction    = UIAlertAction(title: "Active",   style: .Default, handler: nil);
            let inactiveAction  = UIAlertAction(title: "Inactive", style: .Default, handler: nil);
            statusPopUp.addAction(activeAction);
            statusPopUp.addAction(inactiveAction);
            statusPopUp.addAction(cancelFilter);
            self.presentViewController(statusPopUp, animated: true, completion: nil);
        })
        let dateAction = UIAlertAction(title: "Date", style: .Default, handler: { (action) in
            let datePopUp       = UIAlertController(title: "Date", message: "Which date do you want to filter to.", preferredStyle: .Alert);
            let completedAction = UIAlertAction(title: "Completed", style: .Default, handler: nil);
            let nextDueAction   = UIAlertAction(title: "Next Due",  style: .Default, handler: nil);
            datePopUp.addAction(completedAction);
            datePopUp.addAction(nextDueAction);
            datePopUp.addAction(cancelFilter);
            self.presentViewController(datePopUp, animated: true, completion: nil);
        })

        actionSheet.addAction(directionAction);
        actionSheet.addAction(statusAction);
        actionSheet.addAction(dateAction);
        actionSheet.addAction(cancelFilter);

        self.presentViewController(actionSheet, animated: true, completion: nil)
	}

    @IBAction func filterClear() /* - Clear Filters Button - */ {

    }
}
