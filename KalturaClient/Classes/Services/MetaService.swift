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

public final class MetaService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func meta<T: Meta.MetaTokenizer>() -> T {
			return T(self.append("meta"))
		}
	}

	/**  Add a new meta  */
	public static func add(meta: Meta) -> RequestBuilder<Meta, Meta.MetaTokenizer, AddTokenizer> {
		let request: RequestBuilder<Meta, Meta.MetaTokenizer, AddTokenizer> = RequestBuilder<Meta, Meta.MetaTokenizer, AddTokenizer>(service: "meta", action: "add")
			.setParam(key: "meta", value: meta)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing meta  */
	public static func delete(id: Int64) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "meta", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: MetaFilter.MetaFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<MetaListResponse, MetaListResponse.MetaListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	/**  Return a list of metas for the account with optional filter  */
	public static func list(filter: MetaFilter?) -> RequestBuilder<MetaListResponse, MetaListResponse.MetaListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MetaListResponse, MetaListResponse.MetaListResponseTokenizer, ListTokenizer> = RequestBuilder<MetaListResponse, MetaListResponse.MetaListResponseTokenizer, ListTokenizer>(service: "meta", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func meta<T: Meta.MetaTokenizer>() -> T {
			return T(self.append("meta"))
		}
	}

	/**  Update an existing meta  */
	public static func update(id: Int64, meta: Meta) -> RequestBuilder<Meta, Meta.MetaTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Meta, Meta.MetaTokenizer, UpdateTokenizer> = RequestBuilder<Meta, Meta.MetaTokenizer, UpdateTokenizer>(service: "meta", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "meta", value: meta)

		return request
	}
}
