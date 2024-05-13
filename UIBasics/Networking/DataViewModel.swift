//
//  DataViewModel.swift
//  UIBasics
//
//  Created by djangir on 13/05/24.
//

import Foundation
import SwiftUI
//class DataViewModel: ObservableObject {
//    @Published var items = [DataModel(id: 1, name: "dev"), DataModel(id: 2, name: "jangir")]
//    func addItem() {
//        items.append(DataModel(id: items.count + 1, name: "New"))
//    }
//}

@Observable
class DataViewModel {
    var items = [DataModel(id: 1, name: "dev"), DataModel(id: 2, name: "jangir")]
    var name: String = ""
    func addItem() {
        items.append(DataModel(id: items.count + 1, name: name))
    }
}
