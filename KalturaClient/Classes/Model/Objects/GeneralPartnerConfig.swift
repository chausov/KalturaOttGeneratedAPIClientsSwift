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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  Partner General configuration  */
open class GeneralPartnerConfig: PartnerConfiguration {

	public class GeneralPartnerConfigTokenizer: PartnerConfiguration.PartnerConfigurationTokenizer {
		
		public var partnerName: BaseTokenizedObject {
			get {
				return self.append("partnerName") 
			}
		}
		
		public var mainLanguage: BaseTokenizedObject {
			get {
				return self.append("mainLanguage") 
			}
		}
		
		public var secondaryLanguages: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("secondaryLanguages"))
			} 
		}
		
		public var deleteMediaPolicy: BaseTokenizedObject {
			get {
				return self.append("deleteMediaPolicy") 
			}
		}
		
		public var mainCurrency: BaseTokenizedObject {
			get {
				return self.append("mainCurrency") 
			}
		}
		
		public var secondaryCurrencys: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("secondaryCurrencys"))
			} 
		}
		
		public var downgradePolicy: BaseTokenizedObject {
			get {
				return self.append("downgradePolicy") 
			}
		}
		
		public var mailSettings: BaseTokenizedObject {
			get {
				return self.append("mailSettings") 
			}
		}
		
		public var dateFormat: BaseTokenizedObject {
			get {
				return self.append("dateFormat") 
			}
		}
		
		public var householdLimitationModule: BaseTokenizedObject {
			get {
				return self.append("householdLimitationModule") 
			}
		}
	}

	/**  Partner name  */
	public var partnerName: String? = nil
	/**  Main metadata language  */
	public var mainLanguage: Int? = nil
	/**  More languages  */
	public var secondaryLanguages: Array<IntegerValue>? = nil
	/**  Delete media policy  */
	public var deleteMediaPolicy: DeleteMediaPolicy? = nil
	/**  Main currency  */
	public var mainCurrency: Int? = nil
	/**  More currencys  */
	public var secondaryCurrencys: Array<IntegerValue>? = nil
	/**  Downgrade policy  */
	public var downgradePolicy: DowngradePolicy? = nil
	/**  Mail settings  */
	public var mailSettings: String? = nil
	/**  Default Date Format for Email notifications (default should be: DD Month YYYY)  */
	public var dateFormat: String? = nil
	/**  Household limitation&amp;#160;module  */
	public var householdLimitationModule: Int? = nil


	public func setMultiRequestToken(partnerName: String) {
		self.dict["partnerName"] = partnerName
	}
	
	public func setMultiRequestToken(mainLanguage: String) {
		self.dict["mainLanguage"] = mainLanguage
	}
	
	public func setMultiRequestToken(deleteMediaPolicy: String) {
		self.dict["deleteMediaPolicy"] = deleteMediaPolicy
	}
	
	public func setMultiRequestToken(mainCurrency: String) {
		self.dict["mainCurrency"] = mainCurrency
	}
	
	public func setMultiRequestToken(downgradePolicy: String) {
		self.dict["downgradePolicy"] = downgradePolicy
	}
	
	public func setMultiRequestToken(mailSettings: String) {
		self.dict["mailSettings"] = mailSettings
	}
	
	public func setMultiRequestToken(dateFormat: String) {
		self.dict["dateFormat"] = dateFormat
	}
	
	public func setMultiRequestToken(householdLimitationModule: String) {
		self.dict["householdLimitationModule"] = householdLimitationModule
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerName"] != nil {
			partnerName = dict["partnerName"] as? String
		}
		if dict["mainLanguage"] != nil {
			mainLanguage = dict["mainLanguage"] as? Int
		}
		if dict["secondaryLanguages"] != nil {
			secondaryLanguages = try JSONParser.parse(array: dict["secondaryLanguages"] as! [Any])
		}
		if dict["deleteMediaPolicy"] != nil {
			deleteMediaPolicy = DeleteMediaPolicy(rawValue: "\(dict["deleteMediaPolicy"]!)")
		}
		if dict["mainCurrency"] != nil {
			mainCurrency = dict["mainCurrency"] as? Int
		}
		if dict["secondaryCurrencys"] != nil {
			secondaryCurrencys = try JSONParser.parse(array: dict["secondaryCurrencys"] as! [Any])
		}
		if dict["downgradePolicy"] != nil {
			downgradePolicy = DowngradePolicy(rawValue: "\(dict["downgradePolicy"]!)")
		}
		if dict["mailSettings"] != nil {
			mailSettings = dict["mailSettings"] as? String
		}
		if dict["dateFormat"] != nil {
			dateFormat = dict["dateFormat"] as? String
		}
		if dict["householdLimitationModule"] != nil {
			householdLimitationModule = dict["householdLimitationModule"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerName != nil) {
			dict["partnerName"] = partnerName!
		}
		if(mainLanguage != nil) {
			dict["mainLanguage"] = mainLanguage!
		}
		if(secondaryLanguages != nil) {
			dict["secondaryLanguages"] = secondaryLanguages!.map { value in value.toDictionary() }
		}
		if(deleteMediaPolicy != nil) {
			dict["deleteMediaPolicy"] = deleteMediaPolicy!.rawValue
		}
		if(mainCurrency != nil) {
			dict["mainCurrency"] = mainCurrency!
		}
		if(secondaryCurrencys != nil) {
			dict["secondaryCurrencys"] = secondaryCurrencys!.map { value in value.toDictionary() }
		}
		if(downgradePolicy != nil) {
			dict["downgradePolicy"] = downgradePolicy!.rawValue
		}
		if(mailSettings != nil) {
			dict["mailSettings"] = mailSettings!
		}
		if(dateFormat != nil) {
			dict["dateFormat"] = dateFormat!
		}
		if(householdLimitationModule != nil) {
			dict["householdLimitationModule"] = householdLimitationModule!
		}
		return dict
	}
}

