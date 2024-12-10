//
//  PlatformFont.swift
//  Platform
//
//  Created by 홍성준 on 12/10/24.
//

#if canImport(UIKit)
import UIKit

public typealias PlatformFont = UIFont
#elseif canImport(AppKit)
import AppKit

public typealias PlatformFont = NSFont
#endif
