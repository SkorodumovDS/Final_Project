//
//  FeedCell.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import SwiftUI

struct FeedCell: View {
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
                    Image("menu3dots")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 7 , height: 21)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .padding([.leading , .bottom, .trailing], 8)
            //main post image
            VStack{
                HStack{
                    Divider()
                    VStack(alignment: .leading){
                        Image(post.image)
                            .resizable()
                            .frame(maxWidth: UIScreen.main.bounds.size.width)
                            .frame(maxHeight: UIScreen.main.bounds.size.height)
                            .clipped()
                        //caption
                        HStack{
                            Text(post.caption)
                                .font(.system(size: 14))
                                .lineLimit(4)
                                .foregroundColor(.black)
                                .frame(alignment: .leading)
                        }
                        .padding(.horizontal, 8)
                        //to post screen
                        HStack{
                            Button(action: {}, label: {
                                Text("Показать полностью")
                                    .font(.system(size: 20, weight: .semibold))
                                    .padding(4)
                                    .foregroundStyle(.blue)
                                    .frame(alignment: .leading)
                            })
                        }
                    } .frame(maxWidth: .infinity , alignment: .leading)
                }
                Divider()
                //action buttons
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image("like")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20 , height: 20)
                            .font(.system(size: 20))
                            .padding(4)
                    })
                    Text(String(post.likes))
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image("message")
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
                            .foregroundColor(.black)
                            .scaledToFill()
                            .frame(width: 20 , height: 20)
                            .padding(4)
                    })
                }
                .padding([.leading, .trailing], 4)
                
            }.background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
                .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
            
        }.padding()
    }
}

#Preview {
    FeedCell(post:FeedViewModel().posts.first!)
}
