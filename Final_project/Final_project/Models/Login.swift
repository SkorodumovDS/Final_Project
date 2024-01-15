//
//  Login.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 14.01.2024.
//

import Foundation

struct Login {
    
    let phone : String
    let username : ProfileModel
    
    init(coreDataModel: LoginCoreDataModel) {
        self.phone = coreDataModel.phone
        self.username = ProfileModel(coreDataModel: coreDataModel.username)
    }
}
