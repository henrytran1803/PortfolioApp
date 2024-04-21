//
//  AboutmeView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//

import SwiftUI

struct AboutmeView: View {
    @State var skills: [String] = ["Languages programming: Swift/ SwiftUI, Python","Tools: Xcode, Pycharm, Visual Studio code, CocoaPod","Frameworks: Vapor","Architecture: MVC, MVVM, MVP", "Knowledge about OOP, DSA", "Version control: GIT", "Core Data",
    "UI/UX Design", "Clean architecture", "Design pattern" ]
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 15){
                HStack{
                    Text("TRAN VIET ANH")
                        .bold()
                        .font(.title)
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("tranvietanh@gmail.com")
                            .foregroundColor(.black)
                        Text("0365899252")
                        Text("Ho Chi Minh, Viet Nam")
                    }.foregroundColor(.secondary)
                        .font(.system(size: 10))
                    
                }
                
                HStack{
                    Spacer()
                    Image("ios")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    Image("xcode")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    Image("swift")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                    Spacer()
                }
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
                Text("SKILLS")
                    .bold()
                VStack(alignment: .leading, spacing: 0){
                    ForEach(skills, id: \.self){ skill in
                        Text(skill)
                            .foregroundStyle(.secondary)
                    }
                }
                
                HStack(alignment: .top, spacing: 10){
                    Spacer()
                    Link(destination: URL(string: "https://github.com/henrytran1803")!) {
                        Image("githubicon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                    Link(destination: URL(string: "https://www.facebook.com/profile.php?id=100028230073307")!) {
                        Image("fbicon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                    Link(destination: URL(string: "https://twitter.com/vangogh1803")!) {
                        Image("xicon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                    Link(destination: URL(string: "@Henrytran1803")!) {
                        Image("teleicon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                    Link(destination: URL(string: "https://www.linkedin.com/in/tvanh20/")!) {
                        Image("linkedinicon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                    Link(destination: URL(string: "https://www.youtube.com/channel/UCJd5w5BpQ0FgNkUxZ9Uw2CA")!) {
                        Image("youtubeicon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                    Spacer()
                }
            }
        }.padding(.horizontal)
    }
}

#Preview {
    AboutmeView()
}
