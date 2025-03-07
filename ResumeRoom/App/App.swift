//
//  App.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import ComposableArchitecture

@main
struct ResumeRoomApp: App {
  var body: some Scene {
    WindowGroup {
      AppView(store: Store(initialState: AppStore.State()) {
        AppStore()
      })
    }
  }
}
