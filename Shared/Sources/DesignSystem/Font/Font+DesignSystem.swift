//
//  Font+DesignSystem.swift
//  Shared
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

public extension Font {
  
  // TODO: - Dynamic Size, 
  
  static let captionM = Font.pretendard(.medium, size: 12)
  static let captionR = Font.pretendard(.regular, size: 12)
  static let captionSB = Font.pretendard(.semiBold, size: 12)
  static let captionB = Font.pretendard(.bold, size: 12)
  
  static let bodyM = Font.pretendard(.medium, size: 17)
  static let bodyR = Font.pretendard(.regular, size: 17)
  static let bodySB = Font.pretendard(.semiBold, size: 17)
  static let bodyB = Font.pretendard(.bold, size: 17)
  
  static let headerM = Font.pretendard(.medium, size: 21)
  static let headerR = Font.pretendard(.regular, size: 21)
  static let headerSB = Font.pretendard(.semiBold, size: 21)
  static let headerB = Font.pretendard(.bold, size: 21)
  
  static let largeHeaderM = Font.pretendard(.medium, size: 26)
  static let largeHeaderR = Font.pretendard(.regular, size: 26)
  static let largeHeaderSB = Font.pretendard(.semiBold, size: 26)
  static let largeHeaderB = Font.pretendard(.bold, size: 26)
}

// MARK: - Pretendard

extension Font {
  
  public enum PretendardWeight {
    /// 900
    case black
    /// 700
    case bold
    /// 800
    case extraBold
    /// 200
    case extraLight
    /// 300
    case light
    /// 500
    case medium
    /// 400
    case regular
    /// 600
    case semiBold
    /// 100
    case thin
  }
  
  public static func pretendard(_ weight: PretendardWeight, size: CGFloat) -> Font {
    switch weight {
    case .black: return DesignSystemFont.Pretendard.black.font(size)
    case .bold: return DesignSystemFont.Pretendard.bold.font(size)
    case .extraBold: return DesignSystemFont.Pretendard.extraBold.font(size)
    case .extraLight: return DesignSystemFont.Pretendard.extraLight.font(size)
    case .light: return DesignSystemFont.Pretendard.light.font(size)
    case .medium: return DesignSystemFont.Pretendard.medium.font(size)
    case .regular: return DesignSystemFont.Pretendard.regular.font(size)
    case .semiBold: return DesignSystemFont.Pretendard.semiBold.font(size)
    case .thin: return DesignSystemFont.Pretendard.thin.font(size)
    }
  }
}
