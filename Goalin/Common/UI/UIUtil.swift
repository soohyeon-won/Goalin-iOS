//
//  Util.swift
//  Goalin
//
//  Created by wonsoohyeon on 12/01/2020.
//  Copyright © 2020 Soohyeon Won. All rights reserved.
//


import Foundation
import UIKit

/* UI에 필요한 공통 요소 작업 */
/* [ index ]
 * - UIColorFromRGB : hex값으로 color 지정
 */
class UIUtil {
    
    class func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}
