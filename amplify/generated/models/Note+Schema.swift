// swiftlint:disable all
import Amplify
import Foundation

extension Note {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case title
    case note
    case category
    case noteDate
    case noteTime
    case location
    case user
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let note = Note.keys
    
    model.pluralName = "Notes"
    
    model.fields(
      .id(),
      .field(note.title, is: .required, ofType: .string),
      .field(note.note, is: .required, ofType: .string),
      .field(note.category, is: .required, ofType: .string),
      .field(note.noteDate, is: .required, ofType: .string),
      .field(note.noteTime, is: .required, ofType: .string),
      .field(note.location, is: .required, ofType: .string),
      .field(note.user, is: .required, ofType: .string)
    )
    }
}