//
//  ListRowView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct ListRowView: View {
    let item : RowItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.completed ? "checkmark.circle" : "circle")
                .foregroundColor(item.completed ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = RowItemModel(title: "Item 1", completed: true)
    static var item2 = RowItemModel(title: "Item 2", completed: false)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
