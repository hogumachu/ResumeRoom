//
//  MeshGradientBackground.swift
//  Shared
//
//  Created by 홍성준 on 3/10/25.
//

import SwiftUI

public extension View {
  func meshGradientBackground() -> some View {
    modifier(MeshGradientBackgroundModifier())
  }
}

private struct MeshGradientBackgroundModifier: ViewModifier {
  @Environment(\.colorScheme) var colorScheme
  
  func body(content: Content) -> some View {
    ZStack {
      MeshGradient(
        width: 3,
        height: 3,
        points: [
          .init(0, 0),
          .init(0.5, 0),
          .init(1, 0),
          .init(0, 0.5),
          .init(0.5, 0.5),
          .init(1, 0.5),
          .init(0, 1),
          .init(0.5, 1),
          .init(1, 1)
        ],
        colors: [
          DynamicColor.primary.scheme(colorScheme).opacity(0.3),
          DynamicColor.background.scheme(colorScheme),
          DynamicColor.background.scheme(colorScheme),
          DynamicColor.background.scheme(colorScheme),
          DynamicColor.secondary.scheme(colorScheme).opacity(0.1),
          DynamicColor.background.scheme(colorScheme),
          DynamicColor.background.scheme(colorScheme),
          DynamicColor.background.scheme(colorScheme),
          DynamicColor.tertiary.scheme(colorScheme).opacity(0.3),
        ]
      )
      .ignoresSafeArea()
      
      content
    }
  }
}

private extension DynamicColor {
  func scheme(_ colorScheme: ColorScheme) -> Color {
    return colorScheme == .light ? light : dark
  }
}
