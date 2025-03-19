//
//  App.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftData
import SwiftUI

import Database

import ComposableArchitecture

@main
struct ResumeRoomApp: App {
  var body: some Scene {
    WindowGroup {
      @Dependency(\.modelContextProvider) var context
      AppView(store: Store(initialState: AppStore.State()) {
        AppStore()
      })
      .modelContext(context)
    }
  }
}
