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

open class HouseholdDeviceFilter: Filter {

	public class HouseholdDeviceFilterTokenizer: Filter.FilterTokenizer {
		
		public var householdIdEqual: BaseTokenizedObject {
			get {
				return self.append("householdIdEqual") 
			}
		}
		
		public var deviceFamilyIdIn: BaseTokenizedObject {
			get {
				return self.append("deviceFamilyIdIn") 
			}
		}
		
		public var externalIdEqual: BaseTokenizedObject {
			get {
				return self.append("externalIdEqual") 
			}
		}
	}

	/**  The identifier of the household  */
	public var householdIdEqual: Int? = nil
	/**  Device family Ids  */
	public var deviceFamilyIdIn: String? = nil
	/**  External Id  */
	public var externalIdEqual: String? = nil


	public func setMultiRequestToken(householdIdEqual: String) {
		self.dict["householdIdEqual"] = householdIdEqual
	}
	
	public func setMultiRequestToken(deviceFamilyIdIn: String) {
		self.dict["deviceFamilyIdIn"] = deviceFamilyIdIn
	}
	
	public func setMultiRequestToken(externalIdEqual: String) {
		self.dict["externalIdEqual"] = externalIdEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["householdIdEqual"] != nil {
			householdIdEqual = dict["householdIdEqual"] as? Int
		}
		if dict["deviceFamilyIdIn"] != nil {
			deviceFamilyIdIn = dict["deviceFamilyIdIn"] as? String
		}
		if dict["externalIdEqual"] != nil {
			externalIdEqual = dict["externalIdEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(householdIdEqual != nil) {
			dict["householdIdEqual"] = householdIdEqual!
		}
		if(deviceFamilyIdIn != nil) {
			dict["deviceFamilyIdIn"] = deviceFamilyIdIn!
		}
		if(externalIdEqual != nil) {
			dict["externalIdEqual"] = externalIdEqual!
		}
		return dict
	}
}

