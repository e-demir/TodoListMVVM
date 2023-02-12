//
//  ListView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct ListView: View {
    @State var items : [RowItemModel] = [
        RowItemModel(title: "Read a book", completed: true),
        RowItemModel(title: "Clean the house", completed: false),
        RowItemModel(title: "Give a kiss", completed: true)
    ]
    
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(indexSet : IndexSet, to : Int){
        items.move(fromOffsets: indexSet, toOffset: to)
    }
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("ToDo 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: {
                    AddView()
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


