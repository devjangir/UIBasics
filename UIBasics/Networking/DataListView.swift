//
//  DataListView.swift
//  UIBasics
//
//  Created by djangir on 13/05/24.
//

import SwiftUI

struct DataListView: View {
    @State var dataViewModel = DataViewModel()
    @State var count = 1
    var body: some View {
        NavigationView(content: {
            VStack {
                TextField("Input \(count)", text: $dataViewModel.name)
                CustomCounter(count: $count)
                List(dataViewModel.items, id: \.id) { item in
                    NavigationLink(destination: DataItemListView(dataViewModel: dataViewModel)) {
                        Text(item.name)
                    }
                }
                
            }
            .navigationTitle("Data Items")
            .navigationBarHidden(false)
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(trailing: Button("+", action: {
                dataViewModel.addItem()
            }))
            
        })
    }
}


#Preview {
    DataListView()
}


struct DataItemListView: View {
    var dataViewModel: DataViewModel
    var body: some View {
        List(dataViewModel.items, id: \.id) { item in
//                NavigationLink(destination: DataItemListView()) {
//                    Text(item.name)
//                }
            Text(item.name)
        }
    }
}

struct CustomCounter: View {
    @Binding var count: Int
    var body: some View {
        Button("Counter \(count)") {
            count += 1
        }
    }
}
