//
//  Font+Extension.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/15.
//

import UIKit


extension UIFont {

    public enum AppleSDGothicNeoType: String {
        case medium = "Medium"
    }

    static func AppleSDGothicNeo(_ type: AppleSDGothicNeoType = .medium, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "AppleSDGothicNeo-\(type.rawValue)", size: size)!
//        return UIFont(name: "AppleSDGothicNeo", size: size)!
    }

    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }

    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }

}
