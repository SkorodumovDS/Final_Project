//
//  FeedViewModel.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import Foundation

class FeedViewModel : ObservableObject {
    
    @Published var posts = [Post]()
    @Published var stories = [Stories]()
    @Published var dates: [Dates] = []
    
    init() {
        fetchPosts()
        fetchStories()
        fetchDates()
    }
    
    func fetchPosts() {
        
        let postsModelArray = PostsCoreDataModel.makePosts()
        if postsModelArray.isEmpty {
            let post1 = Post(username: "David", ownerImage: "exampleOwner", ownerJobTitle: "archtector", image: "exampleImage", likes: 10, comments: 15, isBookmarked: true, caption: "Бэтмен поднимает ставки в войне с криминалом. С помощью лейтенанта Джима Гордона и прокурора Харви Дента он намерен очистить улицы от преступности, отравляющей город. Сотрудничество оказывается эффективным, но скоро они обнаружат себя посреди хаоса, развязанного восходящим криминальным гением, известным испуганным горожанам под именем Джокер." , dateTime: "13 Июля")
            
            let post2 = Post(username: "David", ownerImage: "exampleOwner", ownerJobTitle: "archtector", image: "exampleImage", likes: 10, comments: 15, isBookmarked: true, caption: "Бэтмен поднимает ставки в войне с криминалом. С помощью лейтенанта Джима Гордона и прокурора Харви Дента он намерен очистить улицы от преступности, отравляющей город. Сотрудничество оказывается эффективным, но скоро они обнаружат себя посреди хаоса, развязанного восходящим криминальным гением, известным испуганным горожанам под именем Джокер." , dateTime: "13 Июля")
            
            let post3 = Post(username: "David", ownerImage: "exampleOwner", ownerJobTitle: "archtector", image: "exampleImage", likes: 10, comments: 15, isBookmarked: true, caption: "Бэтмен поднимает ставки в войне с криминалом. С помощью лейтенанта Джима Гордона и прокурора Харви Дента он намерен очистить улицы от преступности, отравляющей город. Сотрудничество оказывается эффективным, но скоро они обнаружат себя посреди хаоса, развязанного восходящим криминальным гением, известным испуганным горожанам под именем Джокер." , dateTime: "15 Июля")
            
            posts = [post1 , post2, post3]
                
            let postsModelCoreDataArray =  posts.map{
                _element in
                PostsCoreDataModel(post: _element)
            }
            PostsCoreDataModel.savePosts(posts: postsModelCoreDataArray)
        }
        else {
            let postsModel =  postsModelArray.map{
                _element in
                Post(postDataModel: _element)
            }
            posts = postsModel
        }
    }
    
    func fetchStories() {
        let stories1 = Stories(image: "exampleStories1")
        let stories2 = Stories(image: "exampleStories2")
        let stories3 = Stories(image: "exampleStories3")
        let stories4 = Stories(image: "exampleStories4")
        let stories5 = Stories(image: "exampleStories5")
        let stories6 = Stories(image: "exampleStories6")
        
        stories = [stories1 , stories2, stories3, stories4, stories5 , stories6]
    }
    
    func   fetchDates() {
        let data1 = Dates(date: "15 Июля")
        let data2 = Dates(date: "13 Июля")
        
        dates = [data1 , data2]
    }
}
