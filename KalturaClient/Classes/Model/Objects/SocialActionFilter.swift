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
// Copyright (C) 2006-2020  Kaltura Inc.
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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class SocialActionFilter: Filter {

	public class SocialActionFilterTokenizer: Filter.FilterTokenizer {
		
		public var assetIdIn: BaseTokenizedObject {
			get {
				return self.append("assetIdIn") 
			}
		}
		
		public var assetTypeEqual: BaseTokenizedObject {
			get {
				return self.append("assetTypeEqual") 
			}
		}
		
		public var actionTypeIn: BaseTokenizedObject {
			get {
				return self.append("actionTypeIn") 
			}
		}
	}

	/**  Comma separated list of asset identifiers.  */
	public var assetIdIn: String? = nil
	/**  Asset Type  */
	public var assetTypeEqual: AssetType? = nil
	/**  Comma separated list of social actions to filter by  */
	public var actionTypeIn: String? = nil


	public func setMultiRequestToken(assetIdIn: String) {
		self.dict["assetIdIn"] = assetIdIn
	}
	
	public func setMultiRequestToken(assetTypeEqual: String) {
		self.dict["assetTypeEqual"] = assetTypeEqual
	}
	
	public func setMultiRequestToken(actionTypeIn: String) {
		self.dict["actionTypeIn"] = actionTypeIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetIdIn"] != nil {
			assetIdIn = dict["assetIdIn"] as? String
		}
		if dict["assetTypeEqual"] != nil {
			assetTypeEqual = AssetType(rawValue: "\(dict["assetTypeEqual"]!)")
		}
		if dict["actionTypeIn"] != nil {
			actionTypeIn = dict["actionTypeIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetIdIn != nil) {
			dict["assetIdIn"] = assetIdIn!
		}
		if(assetTypeEqual != nil) {
			dict["assetTypeEqual"] = assetTypeEqual!.rawValue
		}
		if(actionTypeIn != nil) {
			dict["actionTypeIn"] = actionTypeIn!
		}
		return dict
	}
}

