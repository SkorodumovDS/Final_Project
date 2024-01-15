//
//  SavedPostsView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct SavedPostsView: View {
    @State var profileModel: ProfileModel
    var body: some View {
        NavigationStack{
        VStack{
            
                ScrollView{
                    LazyVStack(spacing:32){
                        ForEach(self.profileModel.likedPosts) {post in
                            NavigationLink(value: post){
                                FeedCell(post: post)
                                    .frame(height: 400)
                            }
                            .navigationDestination(for: Post.self, destination: {post in PostDetail(post: post)})
                        }
                    }
                }
            }
        }.toolbar{
           
        }
    }
}

//#Preview {
//SavedPostsView()
//}
