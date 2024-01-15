//
//  RegistrationView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var phoneNumber : String = ""
    @State private var tagSelection : String? = nil
    var body: some View {
        VStack{
            NavigationLink(destination: ConfirmRegistrationView(phoneNumber: phoneNumber), tag: "accept", selection: $tagSelection) { EmptyView() }
            Spacer()
            Text("ЗАРЕГИСТРИРОВАТЬСЯ")
                .font(.system(size: 20, weight: .semibold))
            Spacer()
            Text("Введите номер")
                .padding([.bottom] , 20)
                .foregroundColor(.gray)
            Text("""
                Ваш номер будет испольваться
                для входа в аккаунт
                """)
            .padding([.bottom] , 30)
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
            .contrast(0.5)
            TextField("+38___-___-__", text: $phoneNumber)
               // .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
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
            
            Button(action: {
                tagSelection = "accept"
            }, label: {
                Text("ДАЛЕЕ")
                    .foregroundColor(Color.white)
                    .frame(height: 19)
                    .multilineTextAlignment(.center)
                   }
            )
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(red: 0.149, green: 0.196, blue: 0.22))
                    .frame(width: 120 , height: 48)
            }
            .padding(.horizontal, 93.0)
            Text("""
                Нажимая кнопку "Далее" Вы принимаете
                пользовательское Соглашение и политику
                конфиденциальности
                """)
            .lineLimit(5)
            .padding(30)
            .padding([.leading , .trailing], 65)
            .font(.system(size: 16))
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
            .contrast(0.5)
            Spacer()
        }
    }
}

#Preview {
    RegistrationView()
}
