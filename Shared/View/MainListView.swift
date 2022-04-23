//
//  MainListView.swift
//  SwiftUiMemo
//
//  Created by Minsoo Jang on 2022/04/23.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStroe
    
    @State private var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.list) { memo in
                    NavigationLink {
                        DetailView(memo: memo)
                    } label: {
                        MemoCell(memo: memo)
                    }
                }
                .onDelete(perform: store.delete)
                
            }
            .listStyle(.plain)
            .navigationTitle("My Memo")
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStroe())
    }
}
