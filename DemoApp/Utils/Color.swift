//
//  File.swift
//  DemoApp
//
//  Created by Tony Mu on 28/02/2018.
//  Copyright © 2018 Tony Mu. All rights reserved.
//
import UIKit

enum Color {
  case theme
  case brown
  case orange
  case white
  case gray_05
  case gray_23
  case gray_40
  case gray_53
  case blue_08
  case custom(hex:String , alpha:Double)
  
  var value: UIColor {
    switch self {
    case .theme:
      return UIColor(red: 102, green: 161, blue: 186)
    case .brown:
      return UIColor(red: 118, green: 106, blue: 99)
    case .orange:
      return UIColor(red: 250, green: 178, blue: 49)
    case .white:
      return UIColor(red: 255, green: 255, blue: 255)
    case .gray_05:
      return UIColor(red: 242, green: 242, blue: 242)
    case .gray_23:
      return UIColor(red: 199, green: 198, blue: 194)
    case .gray_40:
      return UIColor(red: 153, green: 153, blue: 153)
    case .gray_53:
      return UIColor(red: 121, green: 122, blue: 118)
    case .blue_08:
      return UIColor(red: 209, green: 227, blue: 234)
    case .custom(let hex, let opacity):
      return UIColor(hexString: hex).withAlphaComponent(CGFloat(opacity))
    }
  }
  
  func withAlpha(_ alpha:Double) -> UIColor {
    return self.value.withAlphaComponent(CGFloat(alpha))
  }
}
