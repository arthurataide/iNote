//
//  Common.swift
//  iNote
//
//  Created by Jose Smith Marmolejos on 2020-06-21.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
class Common{
    static func convertImageToBase64(_ image: UIImage) -> String {
          let imageData:NSData = image.jpegData(compressionQuality: 0.4)! as NSData
             let strBase64 = imageData.base64EncodedString(options: .lineLength64Characters)
             return strBase64
      }
      
//     static func convertBase64ToImage(_ str: String) -> UIImage {
//              let dataDecoded : Data = Data(base64Encoded: str, options: .ignoreUnknownCharacters)!
//              let decodedimage = UIImage(data: dataDecoded)
//              return decodedimage!
//      }
}
