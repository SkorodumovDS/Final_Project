//
//  RegistationViewModel.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 14.01.2024.
//

import Foundation

class RegistationViewModel : ObservableObject {
    
    func registation(phone: String) -> ProfileModel {
        let coreDataModel = LoginCoreDataModel.makeEmptyProfile(phone: phone).username
        return ProfileModel(coreDataModel: coreDataModel)
    }
}
