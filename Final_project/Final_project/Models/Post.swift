//
//  Post.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import Foundation

struct Post :Identifiable, Hashable {
    
    let id = UUID()
    let username : String
    let ownerImage : String
    let ownerJobTitle: String
    let image : String
    let likes: Int
    let comments : Int
    let isBookmarked: Bool
    let caption: String
    let dateTime : String
    
    init(username: String, ownerImage: String, ownerJobTitle: String, image: String, likes: Int, comments: Int, isBookmarked: Bool, caption: String, dateTime: String) {
        self.username = username
        self.ownerImage = ownerImage
        self.ownerJobTitle = ownerJobTitle
        self.image = image
        self.likes = likes
        self.comments = comments
        self.isBookmarked = isBookmarked
        self.caption = caption
        self.dateTime = dateTime
    }
    
    init(postDataModel: PostsCoreDataModel) {
        self.username = postDataModel.username
        self.ownerImage = postDataModel.ownerImage
        self.ownerJobTitle = postDataModel.ownerJobTitle
        self.image = postDataModel.image
        self.likes = postDataModel.likes
        self.comments = postDataModel.comments
        self.isBookmarked = postDataModel.isBookmarked
        self.caption = postDataModel.caption
        self.dateTime = postDataModel.dateTime
    }
}
