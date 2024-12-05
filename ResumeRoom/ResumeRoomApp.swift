//
//  ResumeRoomApp.swift
//  ResumeRoom
//
//  Created by 홍성준 on 11/27/24.
//

import Storage
import SwiftUI
import SwiftData

@main
struct ResumeRoomApp: App {
  @Environment(\.database) var database
  
  var body: some Scene {
    WindowGroup {
      EmptyView()
    }
    .modelContainer(database.container())
  }
}
