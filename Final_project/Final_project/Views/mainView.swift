//
//  mainView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct mainView: View {
    @State var profileModel: ProfileModel
    var body: some View {
        NavigationView{
            TabView() {
                FeedView(profileModel: profileModel)
                    .tabItem {
                        Label("Главная", image: "houseSelected")
                    }
                ProfileView(profileModel: profileModel)
                //.environmentObject(Situation(quizState: .question))
                    .tabItem {
                        Label("Профиль" , image: "userUnselected")
                    }
                SavedPostsView(profileModel: profileModel)
                    .tabItem {
                        Label("Сохраненные", image: "like")
                    }
            }.background(Color.gray)
        }.navigationBarHidden(true)
    }
}

//#Preview {
 //   mainView()
//}
