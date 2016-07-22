import Foundation

public class API {
	var name: String;
	var isUpload: Bool;
	var freq: String;
	var lastUpdate: String;
	var recordNumb: Int;
	var nextUpdate: String;

	init(n: String, isU: Bool, f: String, lU: String, r: Int, nU: String)
	{
		name = n;
		isUpload = isU;
		freq = f;
		lastUpdate = lU;
		recordNumb = r;
		nextUpdate = nU;
	}
}
