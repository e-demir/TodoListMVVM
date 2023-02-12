//
//  ListRowView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "First item of the list")
    }
}
