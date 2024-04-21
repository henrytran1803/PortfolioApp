//
//  ProjectRow.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//

import SwiftUI

struct ProjectRow: View {
    @State var project: Project
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top, spacing: 0) {
                Text(project.name)
                    .font(.headline)
                Spacer()
                Text("Language: ")
                    .bold()
                    .foregroundStyle(.secondary)
                    .font(.system(size: 15))
                Text(project.language)
                    .foregroundStyle(.secondary)
                    .font(.system(size: 15))
                    
            }
            HStack(alignment: .top, spacing: 0) {
                Spacer()
                Text("Status: ")
                    .bold()
                Text(project.status)
            }.foregroundStyle(.secondary)
                .font(.system(size: 15))
        }.padding(.horizontal)
    }
}

#Preview {
    ProjectRow(project: Project(name: "Project1", language: "Swift", tool: "Xcode", highlght: "AI", status: "Doing", detail: "bla", url: "", urlgithub: "", idytb: "blabla"))
}
