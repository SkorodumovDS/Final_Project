//
//  Photos.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import Foundation

struct PhotosModel :Identifiable {
    
    let id = UUID()
    let title : String

    init(title: String) {
        self.title = title
    }
    init(coreDatamodel: PhotosCoreDataModel) {
       self.title = coreDatamodel.title
    }
}
