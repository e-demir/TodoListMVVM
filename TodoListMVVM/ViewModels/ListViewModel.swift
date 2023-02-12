//
//  ListViewModel.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import Foundation

class ListViewModel : ObservableObject{
    
    @Published var items : [RowItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems(){
        let newItems = [
            RowItemModel(title: "Read a book", completed: true),
            RowItemModel(title: "Clean the house", completed: false),
            RowItemModel(title: "Give a kiss", completed: true)
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(indexSet : IndexSet, to : Int){
        items.move(fromOffsets: indexSet, toOffset: to)
    }
    func addItem(title: String){
        let item = RowItemModel(title: title, completed: false)
        items.append(item)
    }
    
    
}
