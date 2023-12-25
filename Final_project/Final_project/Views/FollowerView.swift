//
//  FollowerView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct FollowerView: View {
    @ObservedObject var viewModel  = ProfileViewModel()
    var body: some View {
        let profile = viewModel.profile
        VStack{
            ScrollView{
                //Text(profile.username)
                //    .multilineTextAlignment(.leading)
                HStack{
                    Image(profile.ownerImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(30)
                    VStack{
                        Text(profile.name)
                            .font(.system(size: 20, weight: .semibold))
                            .multilineTextAlignment(.leading)
                        Text(profile.ownerJobTitle)
                            .font(.system(size: 14))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                        HStack{
                            Image(systemName: "person.crop.circle.badge.exclamationmark")
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .clipped()
                                .cornerRadius(10)
                            Text("Подробная информация")
                        }
                    }
                }
                HStack(spacing: 30){
                    Button(action: {}, label: {
                        Text("Сообщение")
                            .foregroundColor(Color.white)
                            .frame(height: 19)
                            .multilineTextAlignment(.center)
                    }
                    )
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.149, green: 0.196, blue: 0.22))
                            .frame(width: 130 , height: 48)
                            .padding([.leading , .trailing] , 16)
                    }
                    .padding([.leading , .trailing, .top] , 16)
                    Button(action: {}, label: {
                        Text("Позвонить")
                            .foregroundColor(Color.white)
                            .frame(height: 19)
                            .multilineTextAlignment(.center)
                    }
                    )
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.666, green: 0.691, blue: 0.704))
                            .frame(width: 130 , height: 48)
                            .padding([.leading , .trailing] , 16)
                    }
                    .padding([.leading , .trailing, .top] , 16)
                }
                HStack{
                    Text("""
                        \(profile.publishing)
                        публикаций
                        """)
                    .multilineTextAlignment(.center)
                    Text("""
                        \(profile.follow)
                        подписок
                        """)
                    .multilineTextAlignment(.center)
                    Text("""
                        \(profile.followers) тыс.
                        подписчиков
                        """)
                    .multilineTextAlignment(.center)
                }.padding([.top], 20)
                HStack{
                    Text("Фотографии")
                        .font(.system(size: 20, weight: .semibold))
                    let photosCount = profile.photos.count
                    Text(String(photosCount))
                        .foregroundColor(.gray)
                    Spacer()
                    Button(action: {}, label: {
                        Image("next")
                    }
                    )
                }.padding()
                HStack{
                    ScrollView(.horizontal) {
                        HStack(spacing: 5){
                            ForEach(profile.photos) { photoTitile in
                                Image(photoTitile.title)
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            }
                        }
                    }
                }
                HStack{
                    Text("Посты \(profile.name)" )
                        .multilineTextAlignment(.leading)
                        .padding([.leading], 10)
                }.padding([.leading], 10)
            }

            List {
                ForEach(viewModel.dates) { date in
                    //HStack{Text(date.date)}
                    let listsPosts = viewModel.posts.filter{ $0.dateTime == date.date && $0.username == profile.username}
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
            }
        }
    }
}
#Preview {
    FollowerView()
}
