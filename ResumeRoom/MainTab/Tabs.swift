//
//  Tabs.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import Foundation

enum Tabs: Equatable, Hashable {
  case calendar
  case home
  case setting
  
  var name: String {
    switch self {
    case .calendar: String(localized: "Calendar", comment: "Tab title")
    case .home: String(localized: "Home", comment: "Tab title")
    case .setting: String(localized: "Setting", comment: "Tab title")
    }
  }
  
  var symbol: String {
    switch self {
    case .calendar: "calendar"
    case .home: "house"
    case .setting: "gear"
    }
  }
}
