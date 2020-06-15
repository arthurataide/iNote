// swiftlint:disable all
import Amplify
import Foundation

extension Media {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case mediaId
    case noteId
    case type
    case media
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let media = Media.keys
    
    model.pluralName = "Media"
    
    model.fields(
      .id(),
      .field(media.mediaId, is: .required, ofType: .string),
      .field(media.noteId, is: .required, ofType: .string),
      .field(media.type, is: .required, ofType: .string),
      .field(media.media, is: .required, ofType: .string)
    )
    }
}