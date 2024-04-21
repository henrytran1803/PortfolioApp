//
//  ProjectDetail.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//

import SwiftUI
import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoId: String
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: demoURL))
    }
}

struct ProjectDetail: View {
    @State var project : Project
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
               
                HStack{
                    Text("Name:")
                        .bold()
                        .font(.title)
                    Text(project.name)
                        .font(.title)
                }
                HStack{
                    Text("Detail:")
                        .bold()
                    Text(project.detail)
                }
                HStack{
                    Text("HighLights:")
                        .bold()
                    Text(project.detail)
                }
                HStack{
                    Text("Language:")
                        .bold()
                    Text(project.highlght)
                }
                HStack{
                    Text("Tool:")
                        .bold()
                    Text(project.tool)
                }
                HStack{
                    Text("Status:")
                        .bold()
                    Text(project.status)
                }
                AsyncImage(url: URL(string: project.url), scale: 3) { phase in
                    switch phase {
                    case .empty:
                        ZStack {
                            Color.gray; ProgressView()
                        }
                    case .success(
                        let image): image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: .infinity)
                    case .failure(let error): Text(error.localizedDescription)
                    @unknown default:
                        EmptyView()
                    }
                        
                }
                YouTubeView(videoId: project.url)
                    .frame(width: 300, height: 200)
                    .padding()
                HStack{
                    Text("See my source code:")
                    Link(destination: URL(string: "https://github.com/henrytran1803")!) {
                        Image("githubicon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ProjectDetail(project: Project(name: "Project1", language: "Swift", tool: "Xcode", highlght: "AI", status: "Doing", detail: "bla", url: "", urlgithub: "", idytb: "blabla"))
}
