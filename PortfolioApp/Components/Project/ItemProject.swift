//
//  ItemProject.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 23/04/2024.
//

import SwiftUI

struct ItemProject: View {
    @State var project :Project
    var body: some View {
        Rectangle()
            .frame(width: .infinity, height: 250)
            .foregroundColor(.gray)
            .opacity(0.4)
            .overlay{
                VStack{
                    Spacer()
                    HStack(alignment: .bottom, content: {
                        Spacer()
                        Text("\(project.name)")
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .padding(7)
                    })
                }
            }
    }
}

#Preview {
    ItemProject(project: Project(name: "", language: "", tool: "", highlght: "", status: "", detail: "", url: "", urlgithub: "", idytb: ""))
}
