// swiftlint:disable all
import Amplify
import Foundation

public struct Media: Model {
  public let id: String
  public var mediaId: String
  public var noteId: String
  public var type: String
  public var media: String
  
  public init(id: String = UUID().uuidString,
      mediaId: String,
      noteId: String,
      type: String,
      media: String) {
      self.id = id
      self.mediaId = mediaId
      self.noteId = noteId
      self.type = type
      self.media = media
  }
}