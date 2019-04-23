//
//  UIBarButtonItem+IconFont.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    
    public enum UIBarButtonItemIconType {
        case title
        case image
    }
    
    public func iconFont<T: IconFontType>(size fontSize: CGFloat, icon: T, color: UIColor? = nil, type: UIBarButtonItemIconType = .image) {
        switch type {
        case .image:
            image = UIImage.iconFont(fontSize: fontSize, icon: icon, color: color)
            tintColor = color
        case .title:
            let attributes = NSAttributedString.attributes(size: fontSize, icon: icon, color: color)
            setTitleTextAttributes(attributes, for: .normal)
            title = icon.unicode
        }
    }
}