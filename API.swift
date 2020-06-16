//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateMyTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String {
    get {
      return graphQLMap["title"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: Int? {
    get {
      return graphQLMap["price"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: Double? {
    get {
      return graphQLMap["rating"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelMyTypeConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: ModelStringInput? = nil, content: ModelStringInput? = nil, price: ModelIntInput? = nil, rating: ModelFloatInput? = nil, and: [ModelMyTypeConditionInput?]? = nil, or: [ModelMyTypeConditionInput?]? = nil, not: ModelMyTypeConditionInput? = nil) {
    graphQLMap = ["title": title, "content": content, "price": price, "rating": rating, "and": and, "or": or, "not": not]
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: ModelFloatInput? {
    get {
      return graphQLMap["rating"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var and: [ModelMyTypeConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMyTypeConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMyTypeConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMyTypeConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMyTypeConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMyTypeConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelFloatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, between: [Double?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateMyTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, title: String? = nil, content: String? = nil, price: Int? = nil, rating: Double? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: Int? {
    get {
      return graphQLMap["price"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: Double? {
    get {
      return graphQLMap["rating"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteMyTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateNoteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int? = nil) {
    graphQLMap = ["id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String {
    get {
      return graphQLMap["title"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var note: String {
    get {
      return graphQLMap["note"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var category: String {
    get {
      return graphQLMap["category"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var noteDate: String {
    get {
      return graphQLMap["noteDate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteDate")
    }
  }

  public var noteTime: String {
    get {
      return graphQLMap["noteTime"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteTime")
    }
  }

  public var location: String {
    get {
      return graphQLMap["location"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var user: String {
    get {
      return graphQLMap["user"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelNoteConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: ModelStringInput? = nil, note: ModelStringInput? = nil, category: ModelStringInput? = nil, noteDate: ModelStringInput? = nil, noteTime: ModelStringInput? = nil, location: ModelStringInput? = nil, user: ModelStringInput? = nil, and: [ModelNoteConditionInput?]? = nil, or: [ModelNoteConditionInput?]? = nil, not: ModelNoteConditionInput? = nil) {
    graphQLMap = ["title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "and": and, "or": or, "not": not]
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var note: ModelStringInput? {
    get {
      return graphQLMap["note"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var category: ModelStringInput? {
    get {
      return graphQLMap["category"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var noteDate: ModelStringInput? {
    get {
      return graphQLMap["noteDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteDate")
    }
  }

  public var noteTime: ModelStringInput? {
    get {
      return graphQLMap["noteTime"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteTime")
    }
  }

  public var location: ModelStringInput? {
    get {
      return graphQLMap["location"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var user: ModelStringInput? {
    get {
      return graphQLMap["user"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user")
    }
  }

  public var and: [ModelNoteConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelNoteConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelNoteConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelNoteConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelNoteConditionInput? {
    get {
      return graphQLMap["not"] as! ModelNoteConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateNoteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, title: String? = nil, note: String? = nil, category: String? = nil, noteDate: String? = nil, noteTime: String? = nil, location: String? = nil, user: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var note: String? {
    get {
      return graphQLMap["note"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var category: String? {
    get {
      return graphQLMap["category"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var noteDate: String? {
    get {
      return graphQLMap["noteDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteDate")
    }
  }

  public var noteTime: String? {
    get {
      return graphQLMap["noteTime"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteTime")
    }
  }

  public var location: String? {
    get {
      return graphQLMap["location"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var user: String? {
    get {
      return graphQLMap["user"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteNoteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateMediaInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, noteId: String, type: String, media: String, version: Int? = nil) {
    graphQLMap = ["id": id, "noteId": noteId, "type": type, "media": media, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var noteId: String {
    get {
      return graphQLMap["noteId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteId")
    }
  }

  public var type: String {
    get {
      return graphQLMap["type"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var media: String {
    get {
      return graphQLMap["media"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "media")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelMediaConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(noteId: ModelStringInput? = nil, type: ModelStringInput? = nil, media: ModelStringInput? = nil, and: [ModelMediaConditionInput?]? = nil, or: [ModelMediaConditionInput?]? = nil, not: ModelMediaConditionInput? = nil) {
    graphQLMap = ["noteId": noteId, "type": type, "media": media, "and": and, "or": or, "not": not]
  }

  public var noteId: ModelStringInput? {
    get {
      return graphQLMap["noteId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteId")
    }
  }

  public var type: ModelStringInput? {
    get {
      return graphQLMap["type"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var media: ModelStringInput? {
    get {
      return graphQLMap["media"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "media")
    }
  }

  public var and: [ModelMediaConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMediaConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMediaConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMediaConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMediaConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMediaConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateMediaInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, noteId: String? = nil, type: String? = nil, media: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "noteId": noteId, "type": type, "media": media, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var noteId: String? {
    get {
      return graphQLMap["noteId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteId")
    }
  }

  public var type: String? {
    get {
      return graphQLMap["type"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var media: String? {
    get {
      return graphQLMap["media"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "media")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteMediaInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelMyTypeFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, title: ModelStringInput? = nil, content: ModelStringInput? = nil, price: ModelIntInput? = nil, rating: ModelFloatInput? = nil, and: [ModelMyTypeFilterInput?]? = nil, or: [ModelMyTypeFilterInput?]? = nil, not: ModelMyTypeFilterInput? = nil) {
    graphQLMap = ["id": id, "title": title, "content": content, "price": price, "rating": rating, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: ModelFloatInput? {
    get {
      return graphQLMap["rating"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var and: [ModelMyTypeFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMyTypeFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMyTypeFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMyTypeFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMyTypeFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMyTypeFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelNoteFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, title: ModelStringInput? = nil, note: ModelStringInput? = nil, category: ModelStringInput? = nil, noteDate: ModelStringInput? = nil, noteTime: ModelStringInput? = nil, location: ModelStringInput? = nil, user: ModelStringInput? = nil, and: [ModelNoteFilterInput?]? = nil, or: [ModelNoteFilterInput?]? = nil, not: ModelNoteFilterInput? = nil) {
    graphQLMap = ["id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var note: ModelStringInput? {
    get {
      return graphQLMap["note"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var category: ModelStringInput? {
    get {
      return graphQLMap["category"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var noteDate: ModelStringInput? {
    get {
      return graphQLMap["noteDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteDate")
    }
  }

  public var noteTime: ModelStringInput? {
    get {
      return graphQLMap["noteTime"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteTime")
    }
  }

  public var location: ModelStringInput? {
    get {
      return graphQLMap["location"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var user: ModelStringInput? {
    get {
      return graphQLMap["user"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user")
    }
  }

  public var and: [ModelNoteFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelNoteFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelNoteFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelNoteFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelNoteFilterInput? {
    get {
      return graphQLMap["not"] as! ModelNoteFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelMediaFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, noteId: ModelStringInput? = nil, type: ModelStringInput? = nil, media: ModelStringInput? = nil, and: [ModelMediaFilterInput?]? = nil, or: [ModelMediaFilterInput?]? = nil, not: ModelMediaFilterInput? = nil) {
    graphQLMap = ["id": id, "noteId": noteId, "type": type, "media": media, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var noteId: ModelStringInput? {
    get {
      return graphQLMap["noteId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "noteId")
    }
  }

  public var type: ModelStringInput? {
    get {
      return graphQLMap["type"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var media: ModelStringInput? {
    get {
      return graphQLMap["media"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "media")
    }
  }

  public var and: [ModelMediaFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMediaFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMediaFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMediaFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMediaFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMediaFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateMyTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMyType($input: CreateMyTypeInput!, $condition: ModelMyTypeConditionInput) {\n  createMyType(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateMyTypeInput
  public var condition: ModelMyTypeConditionInput?

  public init(input: CreateMyTypeInput, condition: ModelMyTypeConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMyType", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMyType: CreateMyType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMyType": createMyType.flatMap { $0.snapshot }])
    }

    public var createMyType: CreateMyType? {
      get {
        return (snapshot["createMyType"] as? Snapshot).flatMap { CreateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMyType")
      }
    }

    public struct CreateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateMyTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMyType($input: UpdateMyTypeInput!, $condition: ModelMyTypeConditionInput) {\n  updateMyType(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateMyTypeInput
  public var condition: ModelMyTypeConditionInput?

  public init(input: UpdateMyTypeInput, condition: ModelMyTypeConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyType", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMyType: UpdateMyType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMyType": updateMyType.flatMap { $0.snapshot }])
    }

    public var updateMyType: UpdateMyType? {
      get {
        return (snapshot["updateMyType"] as? Snapshot).flatMap { UpdateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMyType")
      }
    }

    public struct UpdateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteMyTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMyType($input: DeleteMyTypeInput!, $condition: ModelMyTypeConditionInput) {\n  deleteMyType(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteMyTypeInput
  public var condition: ModelMyTypeConditionInput?

  public init(input: DeleteMyTypeInput, condition: ModelMyTypeConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMyType", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMyType: DeleteMyType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMyType": deleteMyType.flatMap { $0.snapshot }])
    }

    public var deleteMyType: DeleteMyType? {
      get {
        return (snapshot["deleteMyType"] as? Snapshot).flatMap { DeleteMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMyType")
      }
    }

    public struct DeleteMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateNoteMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateNote($input: CreateNoteInput!, $condition: ModelNoteConditionInput) {\n  createNote(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    note\n    category\n    noteDate\n    noteTime\n    location\n    user\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateNoteInput
  public var condition: ModelNoteConditionInput?

  public init(input: CreateNoteInput, condition: ModelNoteConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createNote", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createNote: CreateNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createNote": createNote.flatMap { $0.snapshot }])
    }

    public var createNote: CreateNote? {
      get {
        return (snapshot["createNote"] as? Snapshot).flatMap { CreateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createNote")
      }
    }

    public struct CreateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var noteDate: String {
        get {
          return snapshot["noteDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteDate")
        }
      }

      public var noteTime: String {
        get {
          return snapshot["noteTime"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteTime")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var user: String {
        get {
          return snapshot["user"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateNoteMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateNote($input: UpdateNoteInput!, $condition: ModelNoteConditionInput) {\n  updateNote(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    note\n    category\n    noteDate\n    noteTime\n    location\n    user\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateNoteInput
  public var condition: ModelNoteConditionInput?

  public init(input: UpdateNoteInput, condition: ModelNoteConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateNote", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateNote: UpdateNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateNote": updateNote.flatMap { $0.snapshot }])
    }

    public var updateNote: UpdateNote? {
      get {
        return (snapshot["updateNote"] as? Snapshot).flatMap { UpdateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateNote")
      }
    }

    public struct UpdateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var noteDate: String {
        get {
          return snapshot["noteDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteDate")
        }
      }

      public var noteTime: String {
        get {
          return snapshot["noteTime"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteTime")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var user: String {
        get {
          return snapshot["user"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteNoteMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteNote($input: DeleteNoteInput!, $condition: ModelNoteConditionInput) {\n  deleteNote(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    note\n    category\n    noteDate\n    noteTime\n    location\n    user\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteNoteInput
  public var condition: ModelNoteConditionInput?

  public init(input: DeleteNoteInput, condition: ModelNoteConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteNote", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteNote: DeleteNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteNote": deleteNote.flatMap { $0.snapshot }])
    }

    public var deleteNote: DeleteNote? {
      get {
        return (snapshot["deleteNote"] as? Snapshot).flatMap { DeleteNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteNote")
      }
    }

    public struct DeleteNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var noteDate: String {
        get {
          return snapshot["noteDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteDate")
        }
      }

      public var noteTime: String {
        get {
          return snapshot["noteTime"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteTime")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var user: String {
        get {
          return snapshot["user"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateMediaMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMedia($input: CreateMediaInput!, $condition: ModelMediaConditionInput) {\n  createMedia(input: $input, condition: $condition) {\n    __typename\n    id\n    noteId\n    type\n    media\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateMediaInput
  public var condition: ModelMediaConditionInput?

  public init(input: CreateMediaInput, condition: ModelMediaConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMedia", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMedia: CreateMedium? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMedia": createMedia.flatMap { $0.snapshot }])
    }

    public var createMedia: CreateMedium? {
      get {
        return (snapshot["createMedia"] as? Snapshot).flatMap { CreateMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMedia")
      }
    }

    public struct CreateMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["Media"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("media", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var noteId: String {
        get {
          return snapshot["noteId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteId")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var media: String {
        get {
          return snapshot["media"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "media")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateMediaMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMedia($input: UpdateMediaInput!, $condition: ModelMediaConditionInput) {\n  updateMedia(input: $input, condition: $condition) {\n    __typename\n    id\n    noteId\n    type\n    media\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateMediaInput
  public var condition: ModelMediaConditionInput?

  public init(input: UpdateMediaInput, condition: ModelMediaConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMedia", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMedia: UpdateMedium? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMedia": updateMedia.flatMap { $0.snapshot }])
    }

    public var updateMedia: UpdateMedium? {
      get {
        return (snapshot["updateMedia"] as? Snapshot).flatMap { UpdateMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMedia")
      }
    }

    public struct UpdateMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["Media"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("media", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var noteId: String {
        get {
          return snapshot["noteId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteId")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var media: String {
        get {
          return snapshot["media"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "media")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteMediaMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMedia($input: DeleteMediaInput!, $condition: ModelMediaConditionInput) {\n  deleteMedia(input: $input, condition: $condition) {\n    __typename\n    id\n    noteId\n    type\n    media\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteMediaInput
  public var condition: ModelMediaConditionInput?

  public init(input: DeleteMediaInput, condition: ModelMediaConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMedia", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMedia: DeleteMedium? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMedia": deleteMedia.flatMap { $0.snapshot }])
    }

    public var deleteMedia: DeleteMedium? {
      get {
        return (snapshot["deleteMedia"] as? Snapshot).flatMap { DeleteMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMedia")
      }
    }

    public struct DeleteMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["Media"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("media", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var noteId: String {
        get {
          return snapshot["noteId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteId")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var media: String {
        get {
          return snapshot["media"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "media")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class SyncMyTypesQuery: GraphQLQuery {
  public static let operationString =
    "query SyncMyTypes($filter: ModelMyTypeFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncMyTypes(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      content\n      price\n      rating\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelMyTypeFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelMyTypeFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncMyTypes", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncMyTypes: SyncMyType? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncMyTypes": syncMyTypes.flatMap { $0.snapshot }])
    }

    public var syncMyTypes: SyncMyType? {
      get {
        return (snapshot["syncMyTypes"] as? Snapshot).flatMap { SyncMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncMyTypes")
      }
    }

    public struct SyncMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMyTypeConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelMyTypeConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["MyType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .scalar(Int.self)),
          GraphQLField("rating", type: .scalar(Double.self)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var price: Int? {
          get {
            return snapshot["price"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var rating: Double? {
          get {
            return snapshot["rating"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetMyTypeQuery: GraphQLQuery {
  public static let operationString =
    "query GetMyType($id: ID!) {\n  getMyType(id: $id) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMyType", arguments: ["id": GraphQLVariable("id")], type: .object(GetMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMyType: GetMyType? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMyType": getMyType.flatMap { $0.snapshot }])
    }

    public var getMyType: GetMyType? {
      get {
        return (snapshot["getMyType"] as? Snapshot).flatMap { GetMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMyType")
      }
    }

    public struct GetMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListMyTypesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMyTypes($filter: ModelMyTypeFilterInput, $limit: Int, $nextToken: String) {\n  listMyTypes(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      content\n      price\n      rating\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelMyTypeFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelMyTypeFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMyTypes", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMyTypes: ListMyType? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMyTypes": listMyTypes.flatMap { $0.snapshot }])
    }

    public var listMyTypes: ListMyType? {
      get {
        return (snapshot["listMyTypes"] as? Snapshot).flatMap { ListMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMyTypes")
      }
    }

    public struct ListMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMyTypeConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelMyTypeConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["MyType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .scalar(Int.self)),
          GraphQLField("rating", type: .scalar(Double.self)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var price: Int? {
          get {
            return snapshot["price"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var rating: Double? {
          get {
            return snapshot["rating"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class SyncNotesQuery: GraphQLQuery {
  public static let operationString =
    "query SyncNotes($filter: ModelNoteFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncNotes(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      note\n      category\n      noteDate\n      noteTime\n      location\n      user\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelNoteFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelNoteFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncNotes", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncNotes: SyncNote? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncNotes": syncNotes.flatMap { $0.snapshot }])
    }

    public var syncNotes: SyncNote? {
      get {
        return (snapshot["syncNotes"] as? Snapshot).flatMap { SyncNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncNotes")
      }
    }

    public struct SyncNote: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelNoteConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelNoteConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Note"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("note", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(String.self))),
          GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
          GraphQLField("location", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var note: String {
          get {
            return snapshot["note"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "note")
          }
        }

        public var category: String {
          get {
            return snapshot["category"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var noteDate: String {
          get {
            return snapshot["noteDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "noteDate")
          }
        }

        public var noteTime: String {
          get {
            return snapshot["noteTime"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "noteTime")
          }
        }

        public var location: String {
          get {
            return snapshot["location"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "location")
          }
        }

        public var user: String {
          get {
            return snapshot["user"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "user")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetNoteQuery: GraphQLQuery {
  public static let operationString =
    "query GetNote($id: ID!) {\n  getNote(id: $id) {\n    __typename\n    id\n    title\n    note\n    category\n    noteDate\n    noteTime\n    location\n    user\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getNote", arguments: ["id": GraphQLVariable("id")], type: .object(GetNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getNote: GetNote? = nil) {
      self.init(snapshot: ["__typename": "Query", "getNote": getNote.flatMap { $0.snapshot }])
    }

    public var getNote: GetNote? {
      get {
        return (snapshot["getNote"] as? Snapshot).flatMap { GetNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getNote")
      }
    }

    public struct GetNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var noteDate: String {
        get {
          return snapshot["noteDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteDate")
        }
      }

      public var noteTime: String {
        get {
          return snapshot["noteTime"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteTime")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var user: String {
        get {
          return snapshot["user"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListNotesQuery: GraphQLQuery {
  public static let operationString =
    "query ListNotes($filter: ModelNoteFilterInput, $limit: Int, $nextToken: String) {\n  listNotes(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      note\n      category\n      noteDate\n      noteTime\n      location\n      user\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelNoteFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelNoteFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listNotes", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listNotes: ListNote? = nil) {
      self.init(snapshot: ["__typename": "Query", "listNotes": listNotes.flatMap { $0.snapshot }])
    }

    public var listNotes: ListNote? {
      get {
        return (snapshot["listNotes"] as? Snapshot).flatMap { ListNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listNotes")
      }
    }

    public struct ListNote: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelNoteConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelNoteConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Note"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("note", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(String.self))),
          GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
          GraphQLField("location", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var note: String {
          get {
            return snapshot["note"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "note")
          }
        }

        public var category: String {
          get {
            return snapshot["category"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var noteDate: String {
          get {
            return snapshot["noteDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "noteDate")
          }
        }

        public var noteTime: String {
          get {
            return snapshot["noteTime"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "noteTime")
          }
        }

        public var location: String {
          get {
            return snapshot["location"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "location")
          }
        }

        public var user: String {
          get {
            return snapshot["user"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "user")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class SyncMediaQuery: GraphQLQuery {
  public static let operationString =
    "query SyncMedia($filter: ModelMediaFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncMedia(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      noteId\n      type\n      media\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelMediaFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelMediaFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncMedia", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncMedia: SyncMedium? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncMedia": syncMedia.flatMap { $0.snapshot }])
    }

    public var syncMedia: SyncMedium? {
      get {
        return (snapshot["syncMedia"] as? Snapshot).flatMap { SyncMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncMedia")
      }
    }

    public struct SyncMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMediaConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelMediaConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Media"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
          GraphQLField("type", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var noteId: String {
          get {
            return snapshot["noteId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "noteId")
          }
        }

        public var type: String {
          get {
            return snapshot["type"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var media: String {
          get {
            return snapshot["media"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "media")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetMediaQuery: GraphQLQuery {
  public static let operationString =
    "query GetMedia($id: ID!) {\n  getMedia(id: $id) {\n    __typename\n    id\n    noteId\n    type\n    media\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMedia", arguments: ["id": GraphQLVariable("id")], type: .object(GetMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMedia: GetMedium? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMedia": getMedia.flatMap { $0.snapshot }])
    }

    public var getMedia: GetMedium? {
      get {
        return (snapshot["getMedia"] as? Snapshot).flatMap { GetMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMedia")
      }
    }

    public struct GetMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["Media"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("media", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var noteId: String {
        get {
          return snapshot["noteId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteId")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var media: String {
        get {
          return snapshot["media"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "media")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListMediasQuery: GraphQLQuery {
  public static let operationString =
    "query ListMedias($filter: ModelMediaFilterInput, $limit: Int, $nextToken: String) {\n  listMedias(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      noteId\n      type\n      media\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelMediaFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelMediaFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMedias", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMedia.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMedias: ListMedia? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMedias": listMedias.flatMap { $0.snapshot }])
    }

    public var listMedias: ListMedia? {
      get {
        return (snapshot["listMedias"] as? Snapshot).flatMap { ListMedia(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMedias")
      }
    }

    public struct ListMedia: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMediaConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelMediaConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Media"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
          GraphQLField("type", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var noteId: String {
          get {
            return snapshot["noteId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "noteId")
          }
        }

        public var type: String {
          get {
            return snapshot["type"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var media: String {
          get {
            return snapshot["media"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "media")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateMyTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMyType {\n  onCreateMyType {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMyType", type: .object(OnCreateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMyType: OnCreateMyType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMyType": onCreateMyType.flatMap { $0.snapshot }])
    }

    public var onCreateMyType: OnCreateMyType? {
      get {
        return (snapshot["onCreateMyType"] as? Snapshot).flatMap { OnCreateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMyType")
      }
    }

    public struct OnCreateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateMyTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMyType {\n  onUpdateMyType {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMyType", type: .object(OnUpdateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMyType: OnUpdateMyType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMyType": onUpdateMyType.flatMap { $0.snapshot }])
    }

    public var onUpdateMyType: OnUpdateMyType? {
      get {
        return (snapshot["onUpdateMyType"] as? Snapshot).flatMap { OnUpdateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMyType")
      }
    }

    public struct OnUpdateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteMyTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMyType {\n  onDeleteMyType {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMyType", type: .object(OnDeleteMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMyType: OnDeleteMyType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMyType": onDeleteMyType.flatMap { $0.snapshot }])
    }

    public var onDeleteMyType: OnDeleteMyType? {
      get {
        return (snapshot["onDeleteMyType"] as? Snapshot).flatMap { OnDeleteMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMyType")
      }
    }

    public struct OnDeleteMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateNoteSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateNote {\n  onCreateNote {\n    __typename\n    id\n    title\n    note\n    category\n    noteDate\n    noteTime\n    location\n    user\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateNote", type: .object(OnCreateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateNote: OnCreateNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateNote": onCreateNote.flatMap { $0.snapshot }])
    }

    public var onCreateNote: OnCreateNote? {
      get {
        return (snapshot["onCreateNote"] as? Snapshot).flatMap { OnCreateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateNote")
      }
    }

    public struct OnCreateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var noteDate: String {
        get {
          return snapshot["noteDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteDate")
        }
      }

      public var noteTime: String {
        get {
          return snapshot["noteTime"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteTime")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var user: String {
        get {
          return snapshot["user"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateNoteSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateNote {\n  onUpdateNote {\n    __typename\n    id\n    title\n    note\n    category\n    noteDate\n    noteTime\n    location\n    user\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateNote", type: .object(OnUpdateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateNote: OnUpdateNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateNote": onUpdateNote.flatMap { $0.snapshot }])
    }

    public var onUpdateNote: OnUpdateNote? {
      get {
        return (snapshot["onUpdateNote"] as? Snapshot).flatMap { OnUpdateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateNote")
      }
    }

    public struct OnUpdateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var noteDate: String {
        get {
          return snapshot["noteDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteDate")
        }
      }

      public var noteTime: String {
        get {
          return snapshot["noteTime"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteTime")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var user: String {
        get {
          return snapshot["user"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteNoteSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteNote {\n  onDeleteNote {\n    __typename\n    id\n    title\n    note\n    category\n    noteDate\n    noteTime\n    location\n    user\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteNote", type: .object(OnDeleteNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteNote: OnDeleteNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteNote": onDeleteNote.flatMap { $0.snapshot }])
    }

    public var onDeleteNote: OnDeleteNote? {
      get {
        return (snapshot["onDeleteNote"] as? Snapshot).flatMap { OnDeleteNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteNote")
      }
    }

    public struct OnDeleteNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("noteTime", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, note: String, category: String, noteDate: String, noteTime: String, location: String, user: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "note": note, "category": category, "noteDate": noteDate, "noteTime": noteTime, "location": location, "user": user, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var noteDate: String {
        get {
          return snapshot["noteDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteDate")
        }
      }

      public var noteTime: String {
        get {
          return snapshot["noteTime"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteTime")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var user: String {
        get {
          return snapshot["user"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateMediaSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMedia {\n  onCreateMedia {\n    __typename\n    id\n    noteId\n    type\n    media\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMedia", type: .object(OnCreateMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMedia: OnCreateMedium? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMedia": onCreateMedia.flatMap { $0.snapshot }])
    }

    public var onCreateMedia: OnCreateMedium? {
      get {
        return (snapshot["onCreateMedia"] as? Snapshot).flatMap { OnCreateMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMedia")
      }
    }

    public struct OnCreateMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["Media"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("media", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var noteId: String {
        get {
          return snapshot["noteId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteId")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var media: String {
        get {
          return snapshot["media"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "media")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateMediaSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMedia {\n  onUpdateMedia {\n    __typename\n    id\n    noteId\n    type\n    media\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMedia", type: .object(OnUpdateMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMedia: OnUpdateMedium? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMedia": onUpdateMedia.flatMap { $0.snapshot }])
    }

    public var onUpdateMedia: OnUpdateMedium? {
      get {
        return (snapshot["onUpdateMedia"] as? Snapshot).flatMap { OnUpdateMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMedia")
      }
    }

    public struct OnUpdateMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["Media"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("media", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var noteId: String {
        get {
          return snapshot["noteId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteId")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var media: String {
        get {
          return snapshot["media"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "media")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteMediaSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMedia {\n  onDeleteMedia {\n    __typename\n    id\n    noteId\n    type\n    media\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMedia", type: .object(OnDeleteMedium.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMedia: OnDeleteMedium? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMedia": onDeleteMedia.flatMap { $0.snapshot }])
    }

    public var onDeleteMedia: OnDeleteMedium? {
      get {
        return (snapshot["onDeleteMedia"] as? Snapshot).flatMap { OnDeleteMedium(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMedia")
      }
    }

    public struct OnDeleteMedium: GraphQLSelectionSet {
      public static let possibleTypes = ["Media"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("noteId", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("media", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, noteId: String, type: String, media: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Media", "id": id, "noteId": noteId, "type": type, "media": media, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var noteId: String {
        get {
          return snapshot["noteId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "noteId")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var media: String {
        get {
          return snapshot["media"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "media")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}