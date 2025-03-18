//
//  Date+.swift
//  Shared
//
//  Created by 홍성준 on 3/10/25.
//

import Foundation

public extension Date {
  
  private var calendar: Calendar { Calendar.current }
  
  func isSameDay(_ date: Date) -> Bool {
    return calendar.isDate(self, inSameDayAs: date)
  }
  
  func isToday() -> Bool {
    return isSameDay(.now)
  }
  
  func startOfMonth() -> Date? {
    return calendar.date(
      from: calendar.dateComponents(
        [.year, .month],
        from: calendar.startOfDay(for: self)
      )
    )
  }
  
  func endOfMonth() -> Date? {
    guard let startOfMonth = startOfMonth() else { return nil }
    return calendar.date(
      byAdding: .init(month: 1, day: -1),
      to: startOfMonth
    )
  }
  
  func startOfWeek() -> Date? {
    return calendar.date(
      from: calendar.dateComponents(
        [.yearForWeekOfYear, .weekOfYear],
        from: self
      )
    )
  }
  
  func endOfWeek() -> Date? {
    guard let startOfWeek = startOfWeek() else { return nil }
    return calendar.date(byAdding: .day, value: 6, to: startOfWeek)
  }
  
  func week() -> [Date] {
    guard let startOfWeek = startOfWeek() else { return [] }
    return (0...6).compactMap {
      return calendar.date(byAdding: .day, value: $0, to: startOfWeek)
    }
  }
}
