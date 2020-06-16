// swiftlint:disable all
import Amplify
import Foundation

extension MyType {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case title
    case content
    case price
    case rating
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let myType = MyType.keys
    
    model.pluralName = "MyTypes"
    
    model.fields(
      .id(),
      .field(myType.title, is: .required, ofType: .string),
      .field(myType.content, is: .required, ofType: .string),
      .field(myType.price, is: .optional, ofType: .int),
      .field(myType.rating, is: .optional, ofType: .double)
    )
    }
}