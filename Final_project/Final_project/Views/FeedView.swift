//
//  FeedView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var viewModel  = FeedViewModel()
    
    var body: some View {
        VStack{
            HStack{
                ScrollView(.horizontal){
                    HStack(spacing: 10) {
                        ForEach(viewModel.stories) { storie in
                            Image(storie.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .cornerRadius(40)
                        }
                    }
                }.padding([.leading , .trailing,.bottom])
            }
            // NavigationView{
            List {
                ForEach(viewModel.dates) { date in
                    
                    HStack{
                        Text(date.date)
                    }
                    let listsPosts = viewModel.posts.filter{ $0.dateTime == date.date}
                    ForEach(listsPosts) {post in
                        
                        /* NavigationLink(destination: {
                         PostDetail(post: post)
                         .navigationTitle("Публикации")
                         .listStyle(.plain)
                         }, label: {
                         */
                        FeedCell(post: post)
                            .frame(height: 400)
                        //})
                    }
                    .listStyle(.plain)
                    .scaledToFit()
                }
                //  }
            }
        }
    }
}

#Preview {
    FeedView()
}
