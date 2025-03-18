//
//  CalendarContentView.swift
//  Feature
//
//  Created by 홍성준 on 3/10/25.
//

import SwiftUI

import DesignSystem

import HorizonCalendar

struct CalendarContentView: View {
  
  @Binding var date: Date
  
  private let configuration: CalendarConfiguration
  
  init(
    date: Binding<Date>,
    configuration: CalendarConfiguration = .default
  ) {
    self._date = date
    self.configuration = configuration
  }
  
  var body: some View {
    CalendarViewRepresentable(
      calendar: configuration.calendar,
      visibleDateRange: configuration.visibleDateRange,
      monthsLayout: .horizontal,
      dataDependency: nil
    )
    .backgroundColor(.clear)
    .days(days)
    .onDaySelection { onDaySelection($0.components) }
    .meshGradientBackground()
  }
  
  private func days(_ day: DayComponents) -> some View {
    let current = configuration.calendar.date(from: day.components)
    let isSameDay = current?.isSameDay(date) == true
    return Text("\(day.day)")
      .font(isSameDay ? .pretendard(.bold, size: 16) : .pretendard(.regular, size: 16))
  }
  
  private func onDaySelection(_ day: DateComponents) {
    guard let selectedDate = configuration.calendar.date(from: day),
          configuration.visibleDateRange.contains(selectedDate) else {
      return
    }
    date = selectedDate
  }
}
