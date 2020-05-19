//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTodoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var mpuTransX: Int? {
    get {
      return graphQLMap["mpuTransX"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransX")
    }
  }

  public var mpuTransY: Int? {
    get {
      return graphQLMap["mpuTransY"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransY")
    }
  }

  public var mpuTransZ: Int? {
    get {
      return graphQLMap["mpuTransZ"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransZ")
    }
  }

  public var mpuRotX: Int? {
    get {
      return graphQLMap["mpuRotX"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotX")
    }
  }

  public var mpuRotY: Int? {
    get {
      return graphQLMap["mpuRotY"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotY")
    }
  }

  public var mpuRotZ: Int? {
    get {
      return graphQLMap["mpuRotZ"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotZ")
    }
  }

  public var mpuTemp: Int? {
    get {
      return graphQLMap["mpuTemp"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTemp")
    }
  }
}

public struct ModelTodoConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, description: ModelStringInput? = nil, mpuTransX: ModelIntInput? = nil, mpuTransY: ModelIntInput? = nil, mpuTransZ: ModelIntInput? = nil, mpuRotX: ModelIntInput? = nil, mpuRotY: ModelIntInput? = nil, mpuRotZ: ModelIntInput? = nil, mpuTemp: ModelIntInput? = nil, and: [ModelTodoConditionInput?]? = nil, or: [ModelTodoConditionInput?]? = nil, not: ModelTodoConditionInput? = nil) {
    graphQLMap = ["name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var mpuTransX: ModelIntInput? {
    get {
      return graphQLMap["mpuTransX"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransX")
    }
  }

  public var mpuTransY: ModelIntInput? {
    get {
      return graphQLMap["mpuTransY"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransY")
    }
  }

  public var mpuTransZ: ModelIntInput? {
    get {
      return graphQLMap["mpuTransZ"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransZ")
    }
  }

  public var mpuRotX: ModelIntInput? {
    get {
      return graphQLMap["mpuRotX"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotX")
    }
  }

  public var mpuRotY: ModelIntInput? {
    get {
      return graphQLMap["mpuRotY"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotY")
    }
  }

  public var mpuRotZ: ModelIntInput? {
    get {
      return graphQLMap["mpuRotZ"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotZ")
    }
  }

  public var mpuTemp: ModelIntInput? {
    get {
      return graphQLMap["mpuTemp"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTemp")
    }
  }

  public var and: [ModelTodoConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTodoConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTodoConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTodoConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTodoConditionInput? {
    get {
      return graphQLMap["not"] as! ModelTodoConditionInput?
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

public struct UpdateTodoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var mpuTransX: Int? {
    get {
      return graphQLMap["mpuTransX"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransX")
    }
  }

  public var mpuTransY: Int? {
    get {
      return graphQLMap["mpuTransY"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransY")
    }
  }

  public var mpuTransZ: Int? {
    get {
      return graphQLMap["mpuTransZ"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransZ")
    }
  }

  public var mpuRotX: Int? {
    get {
      return graphQLMap["mpuRotX"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotX")
    }
  }

  public var mpuRotY: Int? {
    get {
      return graphQLMap["mpuRotY"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotY")
    }
  }

  public var mpuRotZ: Int? {
    get {
      return graphQLMap["mpuRotZ"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotZ")
    }
  }

  public var mpuTemp: Int? {
    get {
      return graphQLMap["mpuTemp"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTemp")
    }
  }
}

public struct DeleteTodoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelTodoFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, description: ModelStringInput? = nil, mpuTransX: ModelIntInput? = nil, mpuTransY: ModelIntInput? = nil, mpuTransZ: ModelIntInput? = nil, mpuRotX: ModelIntInput? = nil, mpuRotY: ModelIntInput? = nil, mpuRotZ: ModelIntInput? = nil, mpuTemp: ModelIntInput? = nil, and: [ModelTodoFilterInput?]? = nil, or: [ModelTodoFilterInput?]? = nil, not: ModelTodoFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var mpuTransX: ModelIntInput? {
    get {
      return graphQLMap["mpuTransX"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransX")
    }
  }

  public var mpuTransY: ModelIntInput? {
    get {
      return graphQLMap["mpuTransY"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransY")
    }
  }

  public var mpuTransZ: ModelIntInput? {
    get {
      return graphQLMap["mpuTransZ"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTransZ")
    }
  }

  public var mpuRotX: ModelIntInput? {
    get {
      return graphQLMap["mpuRotX"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotX")
    }
  }

  public var mpuRotY: ModelIntInput? {
    get {
      return graphQLMap["mpuRotY"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotY")
    }
  }

  public var mpuRotZ: ModelIntInput? {
    get {
      return graphQLMap["mpuRotZ"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuRotZ")
    }
  }

  public var mpuTemp: ModelIntInput? {
    get {
      return graphQLMap["mpuTemp"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mpuTemp")
    }
  }

  public var and: [ModelTodoFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTodoFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTodoFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTodoFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTodoFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTodoFilterInput?
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

public final class CreateTodoMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTodo($input: CreateTodoInput!, $condition: ModelTodoConditionInput) {\n  createTodo(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    mpuTransX\n    mpuTransY\n    mpuTransZ\n    mpuRotX\n    mpuRotY\n    mpuRotZ\n    mpuTemp\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateTodoInput
  public var condition: ModelTodoConditionInput?

  public init(input: CreateTodoInput, condition: ModelTodoConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTodo", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTodo: CreateTodo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTodo": createTodo.flatMap { $0.snapshot }])
    }

    public var createTodo: CreateTodo? {
      get {
        return (snapshot["createTodo"] as? Snapshot).flatMap { CreateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTodo")
      }
    }

    public struct CreateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("mpuTransX", type: .scalar(Int.self)),
        GraphQLField("mpuTransY", type: .scalar(Int.self)),
        GraphQLField("mpuTransZ", type: .scalar(Int.self)),
        GraphQLField("mpuRotX", type: .scalar(Int.self)),
        GraphQLField("mpuRotY", type: .scalar(Int.self)),
        GraphQLField("mpuRotZ", type: .scalar(Int.self)),
        GraphQLField("mpuTemp", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var mpuTransX: Int? {
        get {
          return snapshot["mpuTransX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransX")
        }
      }

      public var mpuTransY: Int? {
        get {
          return snapshot["mpuTransY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransY")
        }
      }

      public var mpuTransZ: Int? {
        get {
          return snapshot["mpuTransZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransZ")
        }
      }

      public var mpuRotX: Int? {
        get {
          return snapshot["mpuRotX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotX")
        }
      }

      public var mpuRotY: Int? {
        get {
          return snapshot["mpuRotY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotY")
        }
      }

      public var mpuRotZ: Int? {
        get {
          return snapshot["mpuRotZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotZ")
        }
      }

      public var mpuTemp: Int? {
        get {
          return snapshot["mpuTemp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTemp")
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

public final class UpdateTodoMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTodo($input: UpdateTodoInput!, $condition: ModelTodoConditionInput) {\n  updateTodo(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    mpuTransX\n    mpuTransY\n    mpuTransZ\n    mpuRotX\n    mpuRotY\n    mpuRotZ\n    mpuTemp\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateTodoInput
  public var condition: ModelTodoConditionInput?

  public init(input: UpdateTodoInput, condition: ModelTodoConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTodo", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTodo: UpdateTodo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTodo": updateTodo.flatMap { $0.snapshot }])
    }

    public var updateTodo: UpdateTodo? {
      get {
        return (snapshot["updateTodo"] as? Snapshot).flatMap { UpdateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTodo")
      }
    }

    public struct UpdateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("mpuTransX", type: .scalar(Int.self)),
        GraphQLField("mpuTransY", type: .scalar(Int.self)),
        GraphQLField("mpuTransZ", type: .scalar(Int.self)),
        GraphQLField("mpuRotX", type: .scalar(Int.self)),
        GraphQLField("mpuRotY", type: .scalar(Int.self)),
        GraphQLField("mpuRotZ", type: .scalar(Int.self)),
        GraphQLField("mpuTemp", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var mpuTransX: Int? {
        get {
          return snapshot["mpuTransX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransX")
        }
      }

      public var mpuTransY: Int? {
        get {
          return snapshot["mpuTransY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransY")
        }
      }

      public var mpuTransZ: Int? {
        get {
          return snapshot["mpuTransZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransZ")
        }
      }

      public var mpuRotX: Int? {
        get {
          return snapshot["mpuRotX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotX")
        }
      }

      public var mpuRotY: Int? {
        get {
          return snapshot["mpuRotY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotY")
        }
      }

      public var mpuRotZ: Int? {
        get {
          return snapshot["mpuRotZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotZ")
        }
      }

      public var mpuTemp: Int? {
        get {
          return snapshot["mpuTemp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTemp")
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

public final class DeleteTodoMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTodo($input: DeleteTodoInput!, $condition: ModelTodoConditionInput) {\n  deleteTodo(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    mpuTransX\n    mpuTransY\n    mpuTransZ\n    mpuRotX\n    mpuRotY\n    mpuRotZ\n    mpuTemp\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteTodoInput
  public var condition: ModelTodoConditionInput?

  public init(input: DeleteTodoInput, condition: ModelTodoConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTodo", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTodo: DeleteTodo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTodo": deleteTodo.flatMap { $0.snapshot }])
    }

    public var deleteTodo: DeleteTodo? {
      get {
        return (snapshot["deleteTodo"] as? Snapshot).flatMap { DeleteTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTodo")
      }
    }

    public struct DeleteTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("mpuTransX", type: .scalar(Int.self)),
        GraphQLField("mpuTransY", type: .scalar(Int.self)),
        GraphQLField("mpuTransZ", type: .scalar(Int.self)),
        GraphQLField("mpuRotX", type: .scalar(Int.self)),
        GraphQLField("mpuRotY", type: .scalar(Int.self)),
        GraphQLField("mpuRotZ", type: .scalar(Int.self)),
        GraphQLField("mpuTemp", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var mpuTransX: Int? {
        get {
          return snapshot["mpuTransX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransX")
        }
      }

      public var mpuTransY: Int? {
        get {
          return snapshot["mpuTransY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransY")
        }
      }

      public var mpuTransZ: Int? {
        get {
          return snapshot["mpuTransZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransZ")
        }
      }

      public var mpuRotX: Int? {
        get {
          return snapshot["mpuRotX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotX")
        }
      }

      public var mpuRotY: Int? {
        get {
          return snapshot["mpuRotY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotY")
        }
      }

      public var mpuRotZ: Int? {
        get {
          return snapshot["mpuRotZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotZ")
        }
      }

      public var mpuTemp: Int? {
        get {
          return snapshot["mpuTemp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTemp")
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

public final class GetTodoQuery: GraphQLQuery {
  public static let operationString =
    "query GetTodo($id: ID!) {\n  getTodo(id: $id) {\n    __typename\n    id\n    name\n    description\n    mpuTransX\n    mpuTransY\n    mpuTransZ\n    mpuRotX\n    mpuRotY\n    mpuRotZ\n    mpuTemp\n    createdAt\n    updatedAt\n  }\n}"

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
      GraphQLField("getTodo", arguments: ["id": GraphQLVariable("id")], type: .object(GetTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTodo: GetTodo? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTodo": getTodo.flatMap { $0.snapshot }])
    }

    public var getTodo: GetTodo? {
      get {
        return (snapshot["getTodo"] as? Snapshot).flatMap { GetTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTodo")
      }
    }

    public struct GetTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("mpuTransX", type: .scalar(Int.self)),
        GraphQLField("mpuTransY", type: .scalar(Int.self)),
        GraphQLField("mpuTransZ", type: .scalar(Int.self)),
        GraphQLField("mpuRotX", type: .scalar(Int.self)),
        GraphQLField("mpuRotY", type: .scalar(Int.self)),
        GraphQLField("mpuRotZ", type: .scalar(Int.self)),
        GraphQLField("mpuTemp", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var mpuTransX: Int? {
        get {
          return snapshot["mpuTransX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransX")
        }
      }

      public var mpuTransY: Int? {
        get {
          return snapshot["mpuTransY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransY")
        }
      }

      public var mpuTransZ: Int? {
        get {
          return snapshot["mpuTransZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransZ")
        }
      }

      public var mpuRotX: Int? {
        get {
          return snapshot["mpuRotX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotX")
        }
      }

      public var mpuRotY: Int? {
        get {
          return snapshot["mpuRotY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotY")
        }
      }

      public var mpuRotZ: Int? {
        get {
          return snapshot["mpuRotZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotZ")
        }
      }

      public var mpuTemp: Int? {
        get {
          return snapshot["mpuTemp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTemp")
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

public final class ListTodosQuery: GraphQLQuery {
  public static let operationString =
    "query ListTodos($filter: ModelTodoFilterInput, $limit: Int, $nextToken: String) {\n  listTodos(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      description\n      mpuTransX\n      mpuTransY\n      mpuTransZ\n      mpuRotX\n      mpuRotY\n      mpuRotZ\n      mpuTemp\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTodoFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTodoFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listTodos", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTodos: ListTodo? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTodos": listTodos.flatMap { $0.snapshot }])
    }

    public var listTodos: ListTodo? {
      get {
        return (snapshot["listTodos"] as? Snapshot).flatMap { ListTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTodos")
      }
    }

    public struct ListTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTodoConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTodoConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Todo"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("mpuTransX", type: .scalar(Int.self)),
          GraphQLField("mpuTransY", type: .scalar(Int.self)),
          GraphQLField("mpuTransZ", type: .scalar(Int.self)),
          GraphQLField("mpuRotX", type: .scalar(Int.self)),
          GraphQLField("mpuRotY", type: .scalar(Int.self)),
          GraphQLField("mpuRotZ", type: .scalar(Int.self)),
          GraphQLField("mpuTemp", type: .scalar(Int.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var mpuTransX: Int? {
          get {
            return snapshot["mpuTransX"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mpuTransX")
          }
        }

        public var mpuTransY: Int? {
          get {
            return snapshot["mpuTransY"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mpuTransY")
          }
        }

        public var mpuTransZ: Int? {
          get {
            return snapshot["mpuTransZ"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mpuTransZ")
          }
        }

        public var mpuRotX: Int? {
          get {
            return snapshot["mpuRotX"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mpuRotX")
          }
        }

        public var mpuRotY: Int? {
          get {
            return snapshot["mpuRotY"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mpuRotY")
          }
        }

        public var mpuRotZ: Int? {
          get {
            return snapshot["mpuRotZ"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mpuRotZ")
          }
        }

        public var mpuTemp: Int? {
          get {
            return snapshot["mpuTemp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mpuTemp")
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

public final class OnCreateTodoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTodo {\n  onCreateTodo {\n    __typename\n    id\n    name\n    description\n    mpuTransX\n    mpuTransY\n    mpuTransZ\n    mpuRotX\n    mpuRotY\n    mpuRotZ\n    mpuTemp\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTodo", type: .object(OnCreateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTodo: OnCreateTodo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTodo": onCreateTodo.flatMap { $0.snapshot }])
    }

    public var onCreateTodo: OnCreateTodo? {
      get {
        return (snapshot["onCreateTodo"] as? Snapshot).flatMap { OnCreateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTodo")
      }
    }

    public struct OnCreateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("mpuTransX", type: .scalar(Int.self)),
        GraphQLField("mpuTransY", type: .scalar(Int.self)),
        GraphQLField("mpuTransZ", type: .scalar(Int.self)),
        GraphQLField("mpuRotX", type: .scalar(Int.self)),
        GraphQLField("mpuRotY", type: .scalar(Int.self)),
        GraphQLField("mpuRotZ", type: .scalar(Int.self)),
        GraphQLField("mpuTemp", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var mpuTransX: Int? {
        get {
          return snapshot["mpuTransX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransX")
        }
      }

      public var mpuTransY: Int? {
        get {
          return snapshot["mpuTransY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransY")
        }
      }

      public var mpuTransZ: Int? {
        get {
          return snapshot["mpuTransZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransZ")
        }
      }

      public var mpuRotX: Int? {
        get {
          return snapshot["mpuRotX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotX")
        }
      }

      public var mpuRotY: Int? {
        get {
          return snapshot["mpuRotY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotY")
        }
      }

      public var mpuRotZ: Int? {
        get {
          return snapshot["mpuRotZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotZ")
        }
      }

      public var mpuTemp: Int? {
        get {
          return snapshot["mpuTemp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTemp")
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

public final class OnUpdateTodoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTodo {\n  onUpdateTodo {\n    __typename\n    id\n    name\n    description\n    mpuTransX\n    mpuTransY\n    mpuTransZ\n    mpuRotX\n    mpuRotY\n    mpuRotZ\n    mpuTemp\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTodo", type: .object(OnUpdateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTodo: OnUpdateTodo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTodo": onUpdateTodo.flatMap { $0.snapshot }])
    }

    public var onUpdateTodo: OnUpdateTodo? {
      get {
        return (snapshot["onUpdateTodo"] as? Snapshot).flatMap { OnUpdateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTodo")
      }
    }

    public struct OnUpdateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("mpuTransX", type: .scalar(Int.self)),
        GraphQLField("mpuTransY", type: .scalar(Int.self)),
        GraphQLField("mpuTransZ", type: .scalar(Int.self)),
        GraphQLField("mpuRotX", type: .scalar(Int.self)),
        GraphQLField("mpuRotY", type: .scalar(Int.self)),
        GraphQLField("mpuRotZ", type: .scalar(Int.self)),
        GraphQLField("mpuTemp", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var mpuTransX: Int? {
        get {
          return snapshot["mpuTransX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransX")
        }
      }

      public var mpuTransY: Int? {
        get {
          return snapshot["mpuTransY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransY")
        }
      }

      public var mpuTransZ: Int? {
        get {
          return snapshot["mpuTransZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransZ")
        }
      }

      public var mpuRotX: Int? {
        get {
          return snapshot["mpuRotX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotX")
        }
      }

      public var mpuRotY: Int? {
        get {
          return snapshot["mpuRotY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotY")
        }
      }

      public var mpuRotZ: Int? {
        get {
          return snapshot["mpuRotZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotZ")
        }
      }

      public var mpuTemp: Int? {
        get {
          return snapshot["mpuTemp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTemp")
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

public final class OnDeleteTodoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTodo {\n  onDeleteTodo {\n    __typename\n    id\n    name\n    description\n    mpuTransX\n    mpuTransY\n    mpuTransZ\n    mpuRotX\n    mpuRotY\n    mpuRotZ\n    mpuTemp\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTodo", type: .object(OnDeleteTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTodo: OnDeleteTodo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTodo": onDeleteTodo.flatMap { $0.snapshot }])
    }

    public var onDeleteTodo: OnDeleteTodo? {
      get {
        return (snapshot["onDeleteTodo"] as? Snapshot).flatMap { OnDeleteTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTodo")
      }
    }

    public struct OnDeleteTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("mpuTransX", type: .scalar(Int.self)),
        GraphQLField("mpuTransY", type: .scalar(Int.self)),
        GraphQLField("mpuTransZ", type: .scalar(Int.self)),
        GraphQLField("mpuRotX", type: .scalar(Int.self)),
        GraphQLField("mpuRotY", type: .scalar(Int.self)),
        GraphQLField("mpuRotZ", type: .scalar(Int.self)),
        GraphQLField("mpuTemp", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, mpuTransX: Int? = nil, mpuTransY: Int? = nil, mpuTransZ: Int? = nil, mpuRotX: Int? = nil, mpuRotY: Int? = nil, mpuRotZ: Int? = nil, mpuTemp: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description, "mpuTransX": mpuTransX, "mpuTransY": mpuTransY, "mpuTransZ": mpuTransZ, "mpuRotX": mpuRotX, "mpuRotY": mpuRotY, "mpuRotZ": mpuRotZ, "mpuTemp": mpuTemp, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var mpuTransX: Int? {
        get {
          return snapshot["mpuTransX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransX")
        }
      }

      public var mpuTransY: Int? {
        get {
          return snapshot["mpuTransY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransY")
        }
      }

      public var mpuTransZ: Int? {
        get {
          return snapshot["mpuTransZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTransZ")
        }
      }

      public var mpuRotX: Int? {
        get {
          return snapshot["mpuRotX"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotX")
        }
      }

      public var mpuRotY: Int? {
        get {
          return snapshot["mpuRotY"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotY")
        }
      }

      public var mpuRotZ: Int? {
        get {
          return snapshot["mpuRotZ"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuRotZ")
        }
      }

      public var mpuTemp: Int? {
        get {
          return snapshot["mpuTemp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mpuTemp")
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