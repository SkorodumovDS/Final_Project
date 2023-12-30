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
}
