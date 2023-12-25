//
//  ProfileViewModel.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import Foundation

class ProfileViewModel : ObservableObject {
    
    @Published var profile : Profile
    @Published var dates: [Dates] = []
    @Published var posts = [Post]()
    
    init() {
       
        let profile1 = Profile(username: "victor.dis", name: "Виктор Терещенко", ownerImage: "exampleOwner", ownerJobTitle: "Дизанер", publishing: 1400, followers: 161, follow: 477, photos: [Photos(title: "exampleStories1"),Photos(title:"exampleStories2"),Photos(title:"exampleStories3"),Photos(title:"exampleStories4"),Photos(title:"exampleStories5")])
        
        profile = profile1
        fetchPosts()
        fetchDates()
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
