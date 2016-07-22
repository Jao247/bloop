import UIKit

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
