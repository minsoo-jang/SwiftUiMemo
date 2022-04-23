//
//  MainListView.swift
//  SwiftUiMemo
//
//  Created by Minsoo Jang on 2022/04/23.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStroe
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("My Memo")
        }
        
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStroe())
    }
}


