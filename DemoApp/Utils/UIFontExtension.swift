//
//  UIFontExtension.swift
//  DemoApp
//
//  Created by Tony Mu on 28/02/2018.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import UIKit

extension UIFont {
  
  static var TitilliumWeb: TitilliumWebFont {
    return TitilliumWebFont()
  }
  
}

fileprivate protocol CustomFont {
  var familyName: String {get}
  var defaultSize: CGFloat {get}
}

struct TitilliumWebFont: CustomFont {
  var familyName: String
  var defaultSize: CGFloat
  
  init() {
    familyName = "TitilliumWeb"
    defaultSize = 12
  }
  
  var regular: UIFont {
    return UIFont(name: "\(familyName)-Regular", size: defaultSize)!
  }
  
  var light: UIFont {
    return UIFont(name: "\(familyName)-Light", size: defaultSize)!
  }
  
  var SemiBold: UIFont {
    return UIFont(name: "\(familyName)-SemiBold", size: defaultSize)!
  }
}

struct Icon: CustomFont {
  var familyName: String
  var defaultSize: CGFloat
  
  init() {
    familyName = "FontAwesome"
    defaultSize = 12
  }
  
  var regular: UIFont {
    return UIFont(name: "\(familyName)", size: defaultSize)!
  }
}

