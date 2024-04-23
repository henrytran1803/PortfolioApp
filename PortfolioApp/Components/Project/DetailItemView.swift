//
//  DetailItemView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 23/04/2024.
//

import SwiftUI

struct DetailItemView: View {
    @State var project :Project
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            HStack{
                Text("Name: ")
                    .bold()
                Text(project.name)
            }.font(.system(size: 30))
            HStack{
                Text("Language: ")
                    .bold()
                Text(project.language)
            }
            HStack{
                Text("Tool: ")
                    .bold()
                Text(project.tool)
            }
            HStack{
                Text("HighLight: ")
                    .bold()
                Text(project.highlght)
            }
            HStack{
                Text("Summary: ")
                    .bold()
                Text(project.detail)
            }
        }.frame(width: .infinity)
    }
}

#Preview {
    DetailItemView(project: Project(name: "", language: "", tool: "", highlght: "", status: "", detail: "", url: "", urlgithub: "", idytb: ""))
}
