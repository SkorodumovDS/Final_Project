//
//  mainView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        TabView() {
            FeedView()
            .tabItem {
                Label("Главная", image: "houseSelected")
            }
            ProfileView()
                //.environmentObject(Situation(quizState: .question))
                .tabItem {
                    Label("Профиль" , image: "userUnselected")
                }
            SavedPostsView()
                .tabItem {
                    Label("Сохраненные", image: "like")
                }
        }    }
}

#Preview {
    mainView()
}
