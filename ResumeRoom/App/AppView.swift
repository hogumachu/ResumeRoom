//
//  AppView.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import ComposableArchitecture

struct AppView: View {
  @Bindable private var store: StoreOf<AppStore>
  
  init(store: StoreOf<AppStore>) {
    self.store = store
  }
  
  var body: some View {
    Group {
      switch store.state {
      case .mainTab:
        if let store = store.scope(state: \.mainTab, action: \.mainTab) {
          MainTabCoordinatorView(store: store)
        }
        
      case .splash:
        SplashView()
          .onAppear {
            store.send(.splashOnAppear)
          }
      }
    }
  }
}
