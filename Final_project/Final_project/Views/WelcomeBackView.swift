//
//  WelcomeBackView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct WelcomeBackView: View {
    @State private var phoneNumber : String = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("С возвращением")
                .padding([.bottom] , 20)
                .foregroundColor(.orange)
            Text("""
                Введите номер телефона
                для входа в приложение
                """)
            .padding([.bottom] , 30)
            TextField("+38___-___-__", text: $phoneNumber)
               // .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .padding([.leading , .trailing] , 57)
               // .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black)
                        .padding([.leading , .trailing] , 57)
                        .frame(height: 48)
                }
            Spacer()
            
            Button(action: {}, label: {
                Text("ПОДТВЕРДИТЬ")
                    .foregroundColor(Color.white)
                    .frame(height: 19)
                    .multilineTextAlignment(.center)
                   }
            )
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(red: 0.149, green: 0.196, blue: 0.22))
                    .frame(width: 261 , height: 48)
            }
            .padding(.horizontal, 93.0)
            Spacer()
        }
    }
}

#Preview {
    WelcomeBackView()
}
