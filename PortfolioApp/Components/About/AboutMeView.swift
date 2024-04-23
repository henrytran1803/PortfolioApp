//
//  AboutMeView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 23/04/2024.
//

import SwiftUI
import AxisContribution
import WebKit

struct AboutMeView: View {
    var body: some View {
        VStack{
            Text("ABOUT ME")
                .fontWeight(.heavy)
                .font(.system(size: 70))
            
            VStack(alignment: .leading){
                Text("IOS DEVELOPER")
                    .bold()
                Text("Experienced IOS Developer in app development. Work experience in Swift programming and Xcode with a passion for staying up to date with latest industry trends.")
                    .foregroundStyle(.secondary)
                Text("EDUCATION")
                    .bold()
                VStack(alignment: .leading){
                    HStack(alignment: .top, spacing: 0){
                        Text("Major: ")
                            .bold()
                        Text("Software Engineering")
                        
                    }
                    HStack(alignment: .top, spacing: 0){
                        Text("University: ")
                            .bold()
                        Text("Posts and Telecommunications Institute of Technology, Ho Chi Minh City")
                    }
                    
                    HStack(alignment: .top, spacing: 0){
                        Text("Start: ")
                            .bold()
                        Text("Ho Chi Minh, Viet Nam. Oct 2020")
                    }
                }.foregroundColor(.secondary)
            }
            Text("Contributions")
                .bold()
                WebView(urlString: "https://ghchart.rshah.org/henrytran1803")
                    .frame(width: 400, height: 100)
        }
        Spacer()
    }
}
struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        var webView = WKWebView()
        webView.scrollView.setZoomScale(150, animated: true)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
#Preview {
    AboutMeView()
}
