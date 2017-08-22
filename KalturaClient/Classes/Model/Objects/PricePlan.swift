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
// Copyright (C) 2006-2017  Kaltura Inc.
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

/**  Price plan  */
open class PricePlan: UsageModule {

	/**  Denotes whether or not this object can be renewed  */
	public var isRenewable: Bool? = nil
	/**  Defines the number of times the module will be renewed (for the life_cycle
	  period)  */
	public var renewalsNumber: Int? = nil
	/**  Unique identifier associated with this object&amp;#39;s price  */
	public var priceId: Int? = nil
	/**  The discount module identifier of the price plan  */
	public var discountId: Int64? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isRenewable"] != nil {
			isRenewable = dict["isRenewable"] as? Bool
		}
		if dict["renewalsNumber"] != nil {
			renewalsNumber = dict["renewalsNumber"] as? Int
		}
		if dict["priceId"] != nil {
			priceId = dict["priceId"] as? Int
		}
		if dict["discountId"] != nil {
			discountId = Int64((dict["discountId"] as? String)!)
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isRenewable != nil) {
			dict["isRenewable"] = isRenewable!
		}
		if(renewalsNumber != nil) {
			dict["renewalsNumber"] = renewalsNumber!
		}
		if(priceId != nil) {
			dict["priceId"] = priceId!
		}
		if(discountId != nil) {
			dict["discountId"] = discountId!
		}
		return dict
	}
}

