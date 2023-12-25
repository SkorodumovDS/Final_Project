//
//  PostDetail.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import SwiftUI

struct PostDetail: View {
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            //owner info
            HStack{
                Image(post.ownerImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                VStack{
                    Text(post.username)
                        .font(.system(size: 20, weight: .semibold))
                    Text(post.ownerJobTitle)
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
                Spacer()
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperclip")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20 , height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .padding([.leading , .bottom, .trailing], 8)
            //main post image
            Image(post.image)
                .resizable()
                .frame(maxWidth: UIScreen.main.bounds.size.width)
                .frame(maxHeight: UIScreen.main.bounds.size.height)
                .clipped()
            //caption
            HStack{
                Text(post.caption)
                    .font(.system(size: 14))
            }
            .padding(.horizontal, 8)
        
        //action buttons
        HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20 , height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
            Text(String(post.likes))
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "message")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20 , height: 20)
                            .font(.system(size: 20))
                            .padding(4)
                })
            Text(String(post.comments))
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bookmark")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20 , height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .padding([.leading, .trailing], 4)
            
        }.padding()
    }
}

//#Preview {
//    PostDetail()
//}
