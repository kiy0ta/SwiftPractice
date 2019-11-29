//
//  Util.swift
//  BasePractice
//
//  Created by 清田武史 on 2019/11/29.
//  Copyright © 2019 KIYOTA. All rights reserved.
//

import UIKit

class Util {
    /// 色コードからUIColorの生成
    /// - Parameter rgbValue: 0x[色コード]の値（例:「0xFFFFFF」　※白の場合）
    class func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
