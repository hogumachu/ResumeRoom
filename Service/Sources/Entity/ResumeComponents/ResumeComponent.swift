//
//  ResumeComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public enum ResumeComponent: Componentable {
  case basic(ResumeBasicComponent)
  case media(ResumeMediaComponent)
}
