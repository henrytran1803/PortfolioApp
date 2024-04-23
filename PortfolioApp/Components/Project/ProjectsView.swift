//
//  ProjectsView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 23/04/2024.
//

import SwiftUI

struct ProjectsView: View {
    @StateObject var viewModel = ProjectsViewModel()
    @State var showingCredits = false
    @State  var selectedTabIndex: Int? = nil

    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 0){
                Text("MY")
                    .fontWeight(.heavy)
                    .font(.system(size: 75))
                    .padding(.bottom, -30)
                Text("PROJECTS")
                    .fontWeight(.heavy)
                    .font(.system(size: 75))
            }.frame(height: 150)
        ScrollView{
            ForEach(viewModel.projects, id: \._id){project in
                ItemProject(project: project)
                    .padding(.bottom, 10)
                    .onTapGesture {
                        selectedTabIndex = viewModel.projects.firstIndex(of: project)
                        
                        showingCredits = true
                    }
                    
                
            }
            }
            
        }
        .sheet(isPresented: $showingCredits) {
            if let index = selectedTabIndex {
                let project = viewModel.projects[index]
                TabView(selection: $selectedTabIndex) {
                    ForEach(viewModel.projects.indices, id: \.self) { i in
                        if i == index {
                            DetailItemView(project: viewModel.projects[i])
                                .tag(i)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .presentationDetents([.medium])
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            if value.translation.width < -50 { // Vuốt sang trái
                                if index < viewModel.projects.count - 1 {
                                    selectedTabIndex = index + 1
                                }
                            } else if value.translation.width > 50 { // Vuốt sang phải
                                if index > 0 {
                                    selectedTabIndex = index - 1
                                }
                            }
                        }
                )
            }
        }


        .onAppear {
            viewModel.fetchData { success in
                if success {
                    
                } else {
                    print("Failed to fetch data from Realm")
                }
            }
        }
    }
}

#Preview {
    ProjectsView()
}
