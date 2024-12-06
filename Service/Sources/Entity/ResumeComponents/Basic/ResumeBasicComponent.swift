//
//  ResumeBasicComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public enum ResumeBasicComponent {
  case text(ResumeTextComponent)
  case todo(ResumeTodoComponent)
  case header1(ResumeHeader1Componet)
  case header2(ResumeHeader2Component)
  case header3(ResumeHeader3Component)
  case bullet(ResumeBulletComponent)
  case quote(ResumeQuoteComponent)
  case separator(ResumeSeparatorComponent)
}

extension ResumeBasicComponent: ResumeComponentSectionable {
  public static let sectionTitle = "기본 블록"
}
