//
//  UserListView.swift
//  UIBasics
//
//  Created by djangir on 09/05/24.
//

import SwiftUI

struct UserListView: View {
    @State var names = ["Dev", "Nisha", "harry"]
    @State var nameAdded = ""
    var body: some View {
        VStack {
            List {
                ForEach(0..<names.count, id:\.self) { item in
                    Text(names[item])
                }
            }
            // TextField("Add Name", $nameAdded)
            TextField("Add", text: $nameAdded)
                .autocorrectionDisabled()
                .onSubmit {
                    if(!nameAdded.isEmpty) {
                        names.append(nameAdded)
                        nameAdded = ""
                    }
                }
        }
        .padding()
        
    }
}

#Preview {
    UserListView()
}
