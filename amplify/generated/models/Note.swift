// swiftlint:disable all
import Amplify
import Foundation

public struct Note: Model {
  public let id: String
  public var noteId: String
  public var title: String
  public var note: String
  public var category: String
  public var noteDate: String
  public var noteTime: String
  public var location: String
  public var user: String
  
  public init(id: String = UUID().uuidString,
      noteId: String,
      title: String,
      note: String,
      category: String,
      noteDate: String,
      noteTime: String,
      location: String,
      user: String) {
      self.id = id
      self.noteId = noteId
      self.title = title
      self.note = note
      self.category = category
      self.noteDate = noteDate
      self.noteTime = noteTime
      self.location = location
      self.user = user
  }
}