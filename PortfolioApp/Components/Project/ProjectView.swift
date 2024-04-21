//
//  ProjectView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//

import SwiftUI

import SwiftUI

struct ProjectView: View {
    @StateObject var viewModel = ProjectsViewModel()

    var body: some View {
        NavigationSplitView {
                List(viewModel.projects, id: \._id) { project in
                    NavigationLink {
                        ProjectDetail(project: project)
                    } label: {
                        ProjectRow(project: project)
                    }
                    
                }
                .navigationTitle("Projects")
        }detail: {
            Text("Select a projects")
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


struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}
