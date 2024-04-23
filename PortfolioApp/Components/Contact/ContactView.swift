//
//  ContactView.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 23/04/2024.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("CONTACT")
                .fontWeight(.heavy)
                .font(.system(size: 70))
            Text("&")
                .fontWeight(.heavy)
                .font(.system(size: 70))
            Text("SOCIAL")
                .fontWeight(.heavy)
                .font(.system(size: 70))
            Spacer()
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Image(systemName: "phone.fill")
                        .font(.system(size: 24))
                    Text("0365.899.252")
                        .font(.system(size: 24))
                }
                HStack{
                    Image(systemName: "envelope.fill")
                        .font(.system(size: 24))
                    Text("tranvietanh1803@gmail. com")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                
                HStack{
                    Image("linkedinicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                    Text("tvanh02")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                HStack{
                    Image("xicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                    Text("vangogh1803")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                HStack{
                    Image("teleicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                    Text("@henrytran1803")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                HStack{
                    Image("youtubeicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                    Text("@infynity1803")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                HStack{
                    Image("fbicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                    Text("tranvietanh1803@gmail. com")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                
            }
            
            
        }
    }
}

#Preview {
    ContactView()
}
