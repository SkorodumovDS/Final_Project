//
//  FeedView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var viewModel  = FeedViewModel()
    @State var profileModel: ProfileModel
    var body: some View {
        NavigationStack{
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
            
                ScrollView{
                    
                    /*LazyVStack{
                     ForEach(viewModel.dates) { date in
                     
                     HStack{
                     Text(date.date)
                     }
                     */
                    
                    LazyVStack(spacing:32){
                        
                        
                        /*let listsPosts = viewModel.posts.filter{ $0.dateTime == date.date}
                         */
                        ForEach(viewModel.posts) {post in
                            NavigationLink(value: post){
                                FeedCell(post: post)
                                    .frame(height: 400)
                            }
                            .navigationDestination(for: Post.self, destination: {post in PostDetail(post: post)})
                        }
                    }
                    //  }
                }
            }
        }.toolbar{
           
        }
    }
}

//#Preview {
  //  FeedView()
//}
