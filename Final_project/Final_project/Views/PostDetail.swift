//
//  PostDetail.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import SwiftUI

struct PostDetail: View {
    let post: Post
    @State var leaveComment :String = "оставьте комментарий"
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
               /* Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperclip")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20 , height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                */
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
           Divider()
           //comments
            Text("40 комментариев")
                .foregroundStyle(.gray)
            HStack(alignment: .top){
                Image(post.ownerImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 18, height: 18)
                    .clipped()
                    .cornerRadius(9)
                VStack(alignment: .leading){
                    Text(post.username)
                        .font(.system(size: 20, weight: .semibold))
                    Text("очень интересно")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                    Text("15 июля")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
                Spacer()
                VStack{
                    HStack{
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width:  10, height: 10)
                        Text("3")
                            .foregroundStyle(.gray)
                         
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                       Text("Ответить")
                            .foregroundStyle(.black)
                    })
                }
            }
            //leave comment
            HStack{
                Image(systemName: "paperclip")
                    .foregroundStyle(.gray)
                TextField("leaveComment", text: $leaveComment)
                    .foregroundStyle(.gray)
            }.background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
                .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
            .padding([.top] , 12)
        }.padding()
            .navigationTitle("Публикации")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    PostDetail(post: FeedViewModel().posts.first!)
}
