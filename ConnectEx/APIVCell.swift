import UIKit

@IBObject public class APIVCell: UITableViewCell {

	@IBOutlet weak var name: UILabel!;	
	@IBOutlet weak var freq: UILabel!;
	@IBOutlet weak var lastUp: UILabel!;
	@IBOutlet weak var rec: UILabel!;
	@IBOutlet weak var nextUp: UILabel!;
	@IBOutlet weak var upDown: UIImage!;

	public init() {
		super.init()
	}
}