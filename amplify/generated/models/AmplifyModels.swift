// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "60656f001b925b4e5b46daf1dcc64ef3"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: MyType.self)
    ModelRegistry.register(modelType: Note.self)
    ModelRegistry.register(modelType: Media.self)
  }
}