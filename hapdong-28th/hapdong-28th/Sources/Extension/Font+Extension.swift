//
//  Font+Extension.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/15.
//

import UIKit


extension UIFont {

    public enum AppleSDGothicNeoType: String {
        
//
//        case extraboldItalic = "-ExtraboldItalic"
//        case semiboldItalic = "-SemiboldItalic"
//        case semibold = "-Semibold"
        case regular = ""
        case medium = "Medium"
//        case lightItalic = "Light-Italic"
//        case light = "-Light"
//        case italic = "-Italic"
//        case extraBold = "-Extrabold"
//        case boldItalic = "-BoldItalic"
//        case bold = "-Bold"
    }

    static func AppleSDGothicNeo(_ type: AppleSDGothicNeoType = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
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
