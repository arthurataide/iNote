// swiftlint:disable all
import Amplify
import Foundation

public struct MyType: Model {
  public let id: String
  public var title: String
  public var content: String
  public var price: Int?
  public var rating: Double?
  
  public init(id: String = UUID().uuidString,
      title: String,
      content: String,
      price: Int? = nil,
      rating: Double? = nil) {
      self.id = id
      self.title = title
      self.content = content
      self.price = price
      self.rating = rating
  }
}