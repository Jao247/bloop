import UIKit

@IBObject class FilterListViewCell: UITableViewCell {

	@IBOutlet weak var titleLabel: UILabel!;
	@IBOutlet weak var tableView: UITableView!;

	class var expanded:  CGFloat { get { return 200 } };
	class var collapsed: CGFloat { get { return 44  } };

	func checkHeight() {
		tableView.hidden = (frame.size.height == FilterListViewCell.collapsed)	
	}
}
