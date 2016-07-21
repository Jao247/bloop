import UIKit

let cellID = "cell"

@IBObject public class FilterListTVC: UITableViewController {

	public init() {
		super.init()
	}
		
	public override func viewDidLoad() {
		super.viewDidLoad()
	}
		
	public override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	#region Table view data source
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}

	func tableView(tableView: UITableView, numberOfRowsInSection section: NSInteger) -> Int {
		return 2
	}

	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as! FilterListViewCell
		cell.titleLabel.text = "Testing Text."
		return cell
	}

	public func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
		return false
	}

	public func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
	}

	public func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {

		// Return "false" if you do not want the item to be re-orderable.
		return true
	}

	public func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath toIndexPath: NSIndexPath) {
	}
	#endregion

	#region Table view delegate
	public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

		
	}
	#endregion
}