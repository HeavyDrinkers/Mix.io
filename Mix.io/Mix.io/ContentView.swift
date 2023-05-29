//
//  ContentView.swift
//  test-ios
//
//  Created by 강민혁 on 2023/05/29.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString : String = "https://mix-io-web.vercel.app/"
    
    var body: some View {
        GeometryReader { geometry in
                    VStack(spacing: 0) {
                        WebView(url: URL(string: urlString)!)
                            .frame(height: geometry.size.height)
                            .cornerRadius(0)
//                            .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
                    }
                }
    }
}

struct WebView : UIViewRepresentable {
    var url : URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url : url)
        uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
