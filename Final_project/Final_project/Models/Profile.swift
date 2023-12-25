//
//  Profile.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import Foundation

struct Profile :Identifiable {
    
    let id = UUID()
    let username : String
    let name : String
    let ownerImage : String
    let ownerJobTitle: String
    let publishing : Int
    let followers: Int
    let follow : Int
    let photos : [Photos]
}
