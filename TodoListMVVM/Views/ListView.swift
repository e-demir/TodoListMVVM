//
//  ListView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct ListView: View {
    @State var items : [String] = [
    "First one",
    "Second one",
    "Third one"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                ListRowView(title: $0)
            }
        }
        .listStyle(.plain)
        .navigationTitle("ToDo 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: {
                    Text("Destination")
                }))
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


