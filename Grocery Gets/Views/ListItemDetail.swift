//
//  ListItemDetailViewModel.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/28/24.
//

import SwiftUI

struct ListItemDetail: View {
    @State var isShowingEditForm: Bool = false
    
    var listItem: ListItemModel

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(listItem.name)
                .font(Font.mainTitle)
            Text(formatDate(listItem.date))
                .font(.subheadline)
                .foregroundColor(.gray)
            StatusIndicatorViewModel(status: listItem.status)
        }
        .padding()
        .navigationTitle("Item Details")
    }
    
    enum ItemStatus: String, CaseIterable {
        case pending
        case complete
    }

    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
    
    func createDate(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> Date {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = minute
        components.timeZone = TimeZone.current
        let calendar = Calendar.current
        return calendar.date(from: components)!
    }
    
}

