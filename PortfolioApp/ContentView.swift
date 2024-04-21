//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//

import SwiftUI

struct ContentView: View {
    var modelView = ProjectsViewModel()
    var body: some View {
            TabView {
                AboutmeView()
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("About me")
                    }
                ProjectView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Projects")
                    }
            }
            .onAppear{
                modelView.deleteAllProjects()
                modelView.addSampleData()
            }
        }
}

#Preview {
    ContentView()
}
