//
//  WelcomeView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct WelcomeView: View {
   
    @State private var tagSelection : String? = nil
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: RegistrationView(), tag: "registration", selection: $tagSelection) { EmptyView() }
                NavigationLink(destination: WelcomeBackView(), tag: "welcomeBack", selection: $tagSelection) { EmptyView() }
                Spacer()
                Image("welcomeImage")
                    .scaledToFill()
                    .frame(width: 344, height: 344)
                    .padding([.leading , .trailing] , 30)
                Spacer()
                Button(action: {
                    tagSelection = "registration"
                }, label: {
                    Text("ЗАРЕГИСТРИРОВАТЬСЯ")
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(4)
                })
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 0.149, green: 0.196, blue: 0.22))
                        .frame(width: 261 , height: 48)
                }
                .padding([.bottom] , 20)
                Button(action: {
                    tagSelection = "welcomeBack"
                }, label: {
                    Text("Уже есть аккаунт")
                        .scaledToFill()
                        .frame(width: 118 , height: 20)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                        .padding(4)
                })
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
