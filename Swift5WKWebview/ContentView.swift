//
//  ContentView.swift
//  Swift5WKWebview
//
//  Created by 강덕준 on 12/22/22.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}

struct ContentView: View {
    
    @State private var showLoading: Bool = false
    
    var body: some View {
        VStack {
            WebView(url: URL(string: "http://www.google.com")!, showLoading: $showLoading)
                .overlay(showLoading ? ProgressView("Loading...").toAnyView():
                            EmptyView().toAnyView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
