//
//  Profile.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import Foundation

struct ProfileModel :Identifiable {
    
    let id = UUID()
    let username : String
    let name : String
    let ownerImage : String
    let ownerJobTitle: String
    let publishing : Int
    let followers: Int
    let follow : Int
    let photos : [PhotosModel]
    let likedPosts : [Post]
    
    init(username: String, name: String, ownerImage: String, ownerJobTitle: String, publishing: Int, followers: Int, follow: Int, photos: [PhotosModel], likedPosts: [Post]) {
        self.username = username
        self.name = name
        self.ownerImage = ownerImage
        self.ownerJobTitle = ownerJobTitle
        self.publishing = publishing
        self.followers = followers
        self.follow = follow
        self.photos = photos
        self.likedPosts = likedPosts
    }
    
    init() {
        self.username = ""
        self.name = ""
        self.ownerImage = ""
        self.ownerJobTitle = ""
        self.publishing = 0
        self.followers = 0
        self.follow = 0
        self.photos = []
        self.likedPosts = []
    }
    
     init(coreDataModel: ProfileCoreDataModel) {
        self.username = coreDataModel.username
        self.name = coreDataModel.name
        self.ownerImage = coreDataModel.ownerImage
        self.ownerJobTitle = coreDataModel.ownerJobTitle
        self.publishing = coreDataModel.publishing
        self.followers = coreDataModel.followers
        self.follow = coreDataModel.follow
        
        let photosModels =  coreDataModel.photos.map{
            _element in
            PhotosModel(coreDatamodel: _element)
        }
        self.photos = photosModels
        
        let likedpostModel =  coreDataModel.likedPosts.map{
            _element in
            Post(postDataModel: _element)
        }
        self.likedPosts = likedpostModel
    }
     
}
