//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//

import SwiftUI

struct ContentView: View {
    var modelView = ProjectsViewModel()
    @State private var selectedTab = 0
    var body: some View {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        VStack{
                            Image(selectedTab == 0 ? "homeicon.fill" : "homeicon")
                            Text("Home")
                        }
                    }
                    .tag(0)
                ProjectsView()
                    .tabItem {
                        Image(selectedTab == 1 ? "projecticon.fill" :"projecticon")
                        Text("Projects")
                    }
                    .tag(1)
                SkillView()
                    .tabItem {
                        Image(selectedTab == 2 ? "profile.fill":"profile")
                        Text("Skills")
                    }
                    .tag(2)
                AboutMeView()
                    .tabItem {
                        Image(selectedTab == 3 ? "about.fill":"about")
                        Text("About")
                    }
                    .tag(3)
                ContactView()
                    .tabItem {
                        Image(selectedTab == 4 ? "contact.fill":"contact")
                        Text("Contact")
                    }
                    .tag(4)
            }
            .accentColor(Color.black)
            
            .onAppear{
                modelView.deleteAllProjects()
                modelView.addSampleData()
            }
        }
}

#Preview {
    ContentView()
}
