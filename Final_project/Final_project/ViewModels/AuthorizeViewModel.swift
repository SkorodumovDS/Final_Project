//
//  AuthorizeViewModel.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 14.01.2024.
//

import Foundation

class AuthorizeViewModel : ObservableObject {
    
    func authorize(phone: String) -> ProfileModel {
      
        let emptyProfile = ProfileCoreDataModel(username: phone, name: "", ownerImage: "", ownerJobTitle: "", publishing: 0, followers: 0, follow: 0, photos: [], likedposts: [])
        let loginWithEmptyProfile = LoginCoreDataModel(phone: phone, username:  emptyProfile)
        
        let newLoginModel = LoginCoreDataModel.search(profile: loginWithEmptyProfile)
        
        if newLoginModel.username.ownerImage == "" {
            return ProfileModel(coreDataModel: LoginCoreDataModel.makeEmptyProfile(phone: phone).username)
        }else {
            return ProfileModel(coreDataModel: newLoginModel.username)
        }
    }
}
