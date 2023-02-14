//
//  ListViewModel.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import Foundation

class ListViewModel : ObservableObject{
    
    @Published var items : [RowItemModel] = [] {
        didSet{
            saveItems()
        }
    }
    
    init() {
        getItems()
    }
    
    func getItems(){
//        let newItems = [
//            RowItemModel(title: "Read a book", completed: true),
//            RowItemModel(title: "Clean the house", completed: false),
//            RowItemModel(title: "Give a kiss", completed: true)
//        items.append(contentsOf: items)
//        ]
        guard
            let data = UserDefaults.standard.data(forKey: "list_data"),
            let items = try? JSONDecoder().decode([RowItemModel].self, from: data)
        else{
            return
        }
        self.items = items
        
        
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
    func updateItem(item: RowItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id  }){
            items[index] = item.completeUpdate()
        }
    }
    func saveItems(){
        if let data = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(data, forKey: "list_data")
        }
    }
    
    
}
