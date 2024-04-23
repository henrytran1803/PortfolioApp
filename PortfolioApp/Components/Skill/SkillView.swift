//
//  SkillView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 23/04/2024.
//

import SwiftUI

struct SkillView: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: .infinity, height: 350)
                    .foregroundColor(Color(hue: 10, saturation: 10, brightness: 10))
                    .opacity(0.5)
                    .padding()
                HStack{
                    Text("SKILL")
                        .rotationEffect(.degrees(-90))
                        .fontWeight(.heavy)
                        .font(.system(size: 70))
                        .foregroundColor(.black)
                        .offset(x: -65)
                    Spacer()
                    
                }
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("Languages programming: Swift/SwiftUI, Python")
                    }
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("Tools: Xcode, Pycharm, Visual Studio code, CocoaPod")
                    }
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("rameworks:Vapor")
                    }
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("Version control: GIT")
                    }
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("UI/UX Design")
                    }
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("Clean Architecture: MVC, MVVM, MVP")
                    }
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("Knowledge about OOP, DSA, API, CoreData")
                    }
                    HStack{
                        Image(systemName: "sun.min.fill")
                        Text("Design patern")
                    }
                }.frame(width: 300)
               
            }
        }
    }
}

#Preview {
    SkillView()
}
