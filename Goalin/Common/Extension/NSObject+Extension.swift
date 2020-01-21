//
//  NSObject+Extension.swift
//  Goalin
//
//  Created by wonsoohyeon on 12/01/2020.
//  Copyright © 2020 Soohyeon Won. All rights reserved.
//

import Foundation

extension NSObject {
    static var reuseableIdentifier: String {
        return String(describing: self)
    }
}
