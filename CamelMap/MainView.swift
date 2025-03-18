//
//  MainView.swift
//  CamelMap
//
//  Created by JongHyuk Park on 3/18/25.
//

import SwiftUI

public struct MainView: View {
    
    @State private var text: String = ""
    
    public init() {}
    public var body: some View {
        NavigationStack {
            MainScreenView()
                .searchable(text: $text, prompt: Text("Search..."))
        }
    }
}

fileprivate
struct MainScreenView: View {
    
    @State private var isPresented = false
    @State private var items = sampleData
    @Environment(\.isSearching) private var isSearching
    
    var body: some View {
        ZStack {
            if isSearching {
                //ItemListView(items: sampleData)
                List(items) { data in
                    Button {
                        isPresented = true
                    } label: {
                        ListItemView(item: data)
                    }
                    .sheet(isPresented: $isPresented) {
                        NavigationView {
                            LocationView(item: data)
                        }
                    }
                }
            }else {
                MapView()
            }
        }
    }
}

fileprivate
struct SubScreenView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.dismissSearch) private var dismissSearch
    
    var body: some View {
        Text("SubScreenView")
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading){
                    Button("dismiss") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("dismissSearch") {
                        dismissSearch()
                    }
                }
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
