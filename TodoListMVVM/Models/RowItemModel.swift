//
//  RowItemModel.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import Foundation

struct RowItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let completed: Bool
}
