//
//  UIColor+Helper.swift
//  CommonTool Demo
//
//  Created by WeiJun on 2021/11/5.
//

import Foundation
import UIKit
import CommonTools

extension UIColor {
    public func getHexString() -> String {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        if alpha < 1 {
            return String(format: "#%02X%02X%02X%02X", Int(round(red * 255)), Int(round(green * 255)), Int(round(blue * 255)), Int(round(alpha * 255)))
        }
        return String(format: "#%02X%02X%02X", Int(round(red * 255)), Int(round(green * 255)), Int(round(blue * 255)))
    }
}
