//
//  ResumeSeparatorComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeSeparatorComponent {
  public init() {}
}

extension ResumeSeparatorComponent: ResumeComponentable {
  public static let title = "구분선"
  public static let description = "내용을 구분하기 위해 구분선을 추가하세요."
}
