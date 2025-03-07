//
//  Font+DesignSystem.swift
//  Shared
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

public extension Font {
  
  enum PretendardWeight {
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
  
  static func pretendard(_ weight: PretendardWeight, size: CGFloat) -> Font {
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
