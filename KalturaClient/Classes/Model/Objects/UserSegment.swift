// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2018  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================

/**
 * This class was generated using clients-generator\exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Indicates a segment of a user  */
open class UserSegment: ObjectBase {

	public class UserSegmentTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var segmentId: BaseTokenizedObject {
			get {
				return self.append("segmentId") 
			}
		}
		
		public var segmentationTypeId: BaseTokenizedObject {
			get {
				return self.append("segmentationTypeId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Segment Id  */
	public var segmentId: Int64? = nil
	/**  Segmentation type Id  */
	public var segmentationTypeId: Int64? = nil
	/**  User Id of segment  */
	public var userId: String? = nil


	public func setMultiRequestToken(segmentId: String) {
		self.dict["segmentId"] = segmentId
	}
	
	public func setMultiRequestToken(segmentationTypeId: String) {
		self.dict["segmentationTypeId"] = segmentationTypeId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["segmentId"] != nil {
			segmentId = Int64("\(dict["segmentId"]!)")
		}
		if dict["segmentationTypeId"] != nil {
			segmentationTypeId = Int64("\(dict["segmentationTypeId"]!)")
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(segmentId != nil) {
			dict["segmentId"] = segmentId!
		}
		if(segmentationTypeId != nil) {
			dict["segmentationTypeId"] = segmentationTypeId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		return dict
	}
}

