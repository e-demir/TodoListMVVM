//
//  RowItemModel.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import Foundation

struct RowItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let completed: Bool
    
    init(id: String=UUID().uuidString, title: String, completed: Bool) {
        self.id = id
        self.title = title
        self.completed = completed
    }
    
    func completeUpdate() -> RowItemModel {
        return RowItemModel(id: id, title: title, completed: !completed)
    }
}
