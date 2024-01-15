//
//  ProfileViewModel.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import Foundation

class ProfileViewModel : ObservableObject {
    
    @Published var profile : ProfileModel
    @Published var dates: [Dates] = []
    @Published var posts = [Post]()
    
    init(profile: ProfileModel) {
        self.profile = profile
        fetchProfile()
        fetchPosts()
        fetchDates()
    }
    
    init() {
        self.profile = ProfileModel()
        fetchProfile()
        fetchPosts()
        fetchDates()
    }
    
    func fetchProfile() {
        if self.profile.ownerImage == "" {
            let profile1 = ProfileModel(username: profile.username, name: "Виктор Терещенко", ownerImage: "exampleOwner", ownerJobTitle: "Дизанер", publishing: 1400, followers: 161, follow: 477, photos: [PhotosModel(title: "exampleStories1"),PhotosModel(title:"exampleStories2"),PhotosModel(title:"exampleStories3"),PhotosModel(title:"exampleStories4"),PhotosModel(title:"exampleStories5")] , likedPosts: [])
            
            profile = profile1
            
            let coreDataProfile = ProfileCoreDataModel(profileModel: profile)
            ProfileCoreDataModel.save(profile: coreDataProfile)
        }
    }
    
    func   fetchDates() {
        let data1 = Dates(date: "15 Июля")
        let data2 = Dates(date: "13 Июля")
        
        dates = [data1 , data2]
    }
    
    func fetchPosts() {
        let post1 = Post(username: "victor.dis", ownerImage: "exampleOwner", ownerJobTitle: "archtector", image: "exampleImage", likes: 10, comments: 15, isBookmarked: true, caption: "Бэтмен поднимает ставки в войне с криминалом. С помощью лейтенанта Джима Гордона и прокурора Харви Дента он намерен очистить улицы от преступности, отравляющей город. Сотрудничество оказывается эффективным, но скоро они обнаружат себя посреди хаоса, развязанного восходящим криминальным гением, известным испуганным горожанам под именем Джокер." , dateTime: "13 Июля")
        
        let post2 = Post(username: "victor.dis", ownerImage: "exampleOwner", ownerJobTitle: "archtector", image: "exampleImage", likes: 10, comments: 15, isBookmarked: true, caption: "Бэтмен поднимает ставки в войне с криминалом. С помощью лейтенанта Джима Гордона и прокурора Харви Дента он намерен очистить улицы от преступности, отравляющей город. Сотрудничество оказывается эффективным, но скоро они обнаружат себя посреди хаоса, развязанного восходящим криминальным гением, известным испуганным горожанам под именем Джокер." , dateTime: "13 Июля")
        
        let post3 = Post(username: "David", ownerImage: "exampleOwner", ownerJobTitle: "archtector", image: "exampleImage", likes: 10, comments: 15, isBookmarked: true, caption: "Бэтмен поднимает ставки в войне с криминалом. С помощью лейтенанта Джима Гордона и прокурора Харви Дента он намерен очистить улицы от преступности, отравляющей город. Сотрудничество оказывается эффективным, но скоро они обнаружат себя посреди хаоса, развязанного восходящим криминальным гением, известным испуганным горожанам под именем Джокер." , dateTime: "15 Июля")
        
        posts = [post1 , post2, post3]
    }
}
