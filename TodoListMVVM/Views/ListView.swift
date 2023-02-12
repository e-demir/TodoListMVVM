//
//  ListView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRowView()
        }.navigationTitle("ToDo 📝")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


