//
//  PlatformColor.swift
//  Platform
//
//  Created by 홍성준 on 12/10/24.
//

#if canImport(UIKit)
import UIKit

public typealias PlatformColor = UIColor
#elseif canImport(AppKit)
import AppKit

public typealias PlatformColor = NSColor
#endif
