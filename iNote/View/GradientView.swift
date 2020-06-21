//
//  GradientView.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-20.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit

class GradientView: UIView {

  let startColor = UIColor(white: 1.0, alpha: 0)
  let midColor = UIColor(white: 0, alpha: 0.4)
  var endColor = UIColor(white: 0, alpha: 0.8)
  let startLocation: NSNumber = 0
  let midLocation: NSNumber = 0.6
  let endLocation: NSNumber = 1.0
  
  override public func layoutSubviews() {
    super.layoutSubviews()
    
    let gradient = CAGradientLayer()
    gradient.colors    = [startColor.cgColor, midColor.cgColor, endColor.cgColor]
    gradient.locations = [startLocation, midLocation, endLocation]
    gradient.frame = bounds
    layer.addSublayer(gradient)
    layer.cornerRadius = 10
  }
}
