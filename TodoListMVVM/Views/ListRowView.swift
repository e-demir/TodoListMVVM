//
//  ListRowView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct ListRowView: View {
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text("First item of list")
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView()
    }
}
