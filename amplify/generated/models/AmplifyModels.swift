// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "ff26a83b0bad9b91507d54ec2d9360d4"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Note.self)
    ModelRegistry.register(modelType: Media.self)
  }
}