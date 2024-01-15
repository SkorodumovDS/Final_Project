//
//  ProfileView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct ProfileView: View {
    @State var profileModel: ProfileModel
    @ObservedObject var viewModel  = ProfileViewModel()
    var body: some View {
        let profile = viewModel.profile
        NavigationStack{
            VStack(alignment: .leading){
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
                        VStack(alignment: .leading){
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
                            Text("Редактировать")
                                .foregroundColor(Color.white)
                                .frame(height: 19)
                                .multilineTextAlignment(.center)
                        }
                        )
                        .background{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.orange)
                                .frame(width: 344 , height: 48)
                                .padding([.leading , .trailing] , 16)
                        }
                        .padding([.top], 12)
                    }
                    HStack{
                        Text("""
                        \(profile.publishing)
                        публикаций
                        """)
                        .padding([.horizontal] , 10)
                        .multilineTextAlignment(.center)
                        Text("""
                        \(profile.follow)
                        подписок
                        """)
                        .padding([.horizontal] , 10)
                        .multilineTextAlignment(.center)
                        Text("""
                        \(profile.followers) тыс.
                        подписчиков
                        """)
                        .multilineTextAlignment(.center)
                        .padding([.horizontal] , 10)
                    }.padding([.top], 20)
                        .padding([.horizontal] , 20)
                    Divider()
                        .padding([.top], 12)
                    HStack{
                        VStack{
                            Image("Post")
                            Text("Запись")
                                .multilineTextAlignment(.center)
                        }
                        Spacer()
                        VStack{
                            Image("Photos")
                            Text("История")
                                .multilineTextAlignment(.center)
                        }
                       Spacer()
                        VStack{
                            Image("PhotoGallery")
                            Text("Фото")
                                .multilineTextAlignment(.center)
                        }
                        
                    }.padding(.horizontal, 40)
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
                        Text("Мои записи" )
                            .multilineTextAlignment(.leading)
                            .padding([.leading], 10)
                            Spacer()
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    .padding(.horizontal , 12)
                    
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
        }.navigationTitle(profile.username)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button() {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .toolbar(.visible, for: .automatic)
    }
}

//#Preview {
 //   ProfileView()
//}
