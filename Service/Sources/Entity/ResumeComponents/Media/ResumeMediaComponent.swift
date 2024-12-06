//
//  ResumeMediaComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public enum ResumeMediaComponent {
  case image(ResumeImageComponent)
}

extension ResumeMediaComponent: ResumeComponentSectionable {
  public static var sectionTitle: LocalizedStringKey {
    "component.media.section-title"
  }
}
