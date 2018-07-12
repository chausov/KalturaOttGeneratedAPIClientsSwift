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

public final class RecordingService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func recording<T: Recording.RecordingTokenizer>() -> T {
			return T(self.append("recording"))
		}
	}

	/**  Issue a record request for a program  */
	public static func add(recording: Recording) -> RequestBuilder<Recording, Recording.RecordingTokenizer, AddTokenizer> {
		let request: RequestBuilder<Recording, Recording.RecordingTokenizer, AddTokenizer> = RequestBuilder<Recording, Recording.RecordingTokenizer, AddTokenizer>(service: "recording", action: "add")
			.setParam(key: "recording", value: recording)

		return request
	}

	public class CancelTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Cancel a previously requested recording. Cancel recording can be called for
	  recording in status Scheduled or Recording Only  */
	public static func cancel(id: Int64) -> RequestBuilder<Recording, Recording.RecordingTokenizer, CancelTokenizer> {
		let request: RequestBuilder<Recording, Recording.RecordingTokenizer, CancelTokenizer> = RequestBuilder<Recording, Recording.RecordingTokenizer, CancelTokenizer>(service: "recording", action: "cancel")
			.setParam(key: "id", value: id)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete one or more user recording(s). Delete recording can be called only for
	  recordings in status Recorded  */
	public static func delete(id: Int64) -> RequestBuilder<Recording, Recording.RecordingTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<Recording, Recording.RecordingTokenizer, DeleteTokenizer> = RequestBuilder<Recording, Recording.RecordingTokenizer, DeleteTokenizer>(service: "recording", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Returns recording object by internal identifier  */
	public static func get(id: Int64) -> RequestBuilder<Recording, Recording.RecordingTokenizer, GetTokenizer> {
		let request: RequestBuilder<Recording, Recording.RecordingTokenizer, GetTokenizer> = RequestBuilder<Recording, Recording.RecordingTokenizer, GetTokenizer>(service: "recording", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: RecordingFilter.RecordingFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<RecordingListResponse, RecordingListResponse.RecordingListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: RecordingFilter?) -> RequestBuilder<RecordingListResponse, RecordingListResponse.RecordingListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Return a list of recordings for the household with optional filter by status and
	  KSQL.  */
	public static func list(filter: RecordingFilter?, pager: FilterPager?) -> RequestBuilder<RecordingListResponse, RecordingListResponse.RecordingListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<RecordingListResponse, RecordingListResponse.RecordingListResponseTokenizer, ListTokenizer> = RequestBuilder<RecordingListResponse, RecordingListResponse.RecordingListResponseTokenizer, ListTokenizer>(service: "recording", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class NotifyTokenizer: ClientTokenizer  {
		
		public var externalDomainRecordingId: BaseTokenizedObject {
			get {
				return self.append("externalDomainRecordingId") 
			}
		}
		
		public var recordingStatus: BaseTokenizedObject {
			get {
				return self.append("recordingStatus") 
			}
		}
		
		public var domainId: BaseTokenizedObject {
			get {
				return self.append("domainId") 
			}
		}
		
		public var externalEpgId: BaseTokenizedObject {
			get {
				return self.append("externalEpgId") 
			}
		}
		
		public var recordingType: BaseTokenizedObject {
			get {
				return self.append("recordingType") 
			}
		}
		
		public var isProtected: BaseTokenizedObject {
			get {
				return self.append("isProtected") 
			}
		}
	}

	public static func notify(externalDomainRecordingId: String, recordingStatus: RecordingStatus, domainId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, NotifyTokenizer> {
		return notify(externalDomainRecordingId: externalDomainRecordingId, recordingStatus: recordingStatus, domainId: domainId, externalEpgId: nil)
	}

	public static func notify(externalDomainRecordingId: String, recordingStatus: RecordingStatus, domainId: Int, externalEpgId: String?) -> RequestBuilder<Bool, BaseTokenizedObject, NotifyTokenizer> {
		return notify(externalDomainRecordingId: externalDomainRecordingId, recordingStatus: recordingStatus, domainId: domainId, externalEpgId: externalEpgId, recordingType: nil)
	}

	public static func notify(externalDomainRecordingId: String, recordingStatus: RecordingStatus, domainId: Int, externalEpgId: String?, recordingType: RecordingType?) -> RequestBuilder<Bool, BaseTokenizedObject, NotifyTokenizer> {
		return notify(externalDomainRecordingId: externalDomainRecordingId, recordingStatus: recordingStatus, domainId: domainId, externalEpgId: externalEpgId, recordingType: recordingType, isProtected: false)
	}

	/**  Notify on an external recording  */
	public static func notify(externalDomainRecordingId: String, recordingStatus: RecordingStatus, domainId: Int, externalEpgId: String?, recordingType: RecordingType?, isProtected: Bool?) -> RequestBuilder<Bool, BaseTokenizedObject, NotifyTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, NotifyTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, NotifyTokenizer>(service: "recording", action: "notify")
			.setParam(key: "externalDomainRecordingId", value: externalDomainRecordingId)
			.setParam(key: "recordingStatus", value: recordingStatus.rawValue)
			.setParam(key: "domainId", value: domainId)
			.setParam(key: "externalEpgId", value: externalEpgId)
			.setParam(key: "recordingType", value: recordingType?.rawValue)
			.setParam(key: "isProtected", value: isProtected)

		return request
	}

	public class ProtectTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Protects an existing recording from the cleanup process for the defined
	  protection period  */
	public static func protect(id: Int64) -> RequestBuilder<Recording, Recording.RecordingTokenizer, ProtectTokenizer> {
		let request: RequestBuilder<Recording, Recording.RecordingTokenizer, ProtectTokenizer> = RequestBuilder<Recording, Recording.RecordingTokenizer, ProtectTokenizer>(service: "recording", action: "protect")
			.setParam(key: "id", value: id)

		return request
	}
}
