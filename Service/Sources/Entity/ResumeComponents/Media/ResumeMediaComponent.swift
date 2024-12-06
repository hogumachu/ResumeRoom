//
//  ResumeMediaComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public enum ResumeMediaComponent {
  case image(ResumeImageComponent)
}

extension ResumeMediaComponent: ResumeComponentSectionable {
  public static let sectionTitle = "미디어 블록"
}
