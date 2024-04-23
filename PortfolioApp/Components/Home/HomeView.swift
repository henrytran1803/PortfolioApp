//
//  HomeView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 23/04/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("HELLO THERE, I AM")
                        .fontWeight(.bold)
                    Text("TRAN")
                        .fontWeight(.heavy)
                        .font(.system(size: 70))
                    Text("VIET ANH")
                        .fontWeight(.heavy)
                        .font(.system(size: 70))
                    Text("An ios developer")
                        .foregroundColor(.gray)
                    
                }.frame(width: .infinity)
                    .padding()
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
