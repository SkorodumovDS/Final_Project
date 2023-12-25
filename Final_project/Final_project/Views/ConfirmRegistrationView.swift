//
//  ConfirmRegistrationView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 24.12.2023.
//

import SwiftUI

struct ConfirmRegistrationView: View {
    @State var phoneNumber : String = ""
    @State private var codeNumber : String = ""
    var body: some View {
        VStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("backArrow")
                    .frame(width: 20 , height: 20)
                    .padding([.leading], 2)
            })
            Spacer()
            Text("Подтверждение регистрации")
                .padding([.bottom] , 20)
                .foregroundColor(.orange)
                .font(.system(size: 20 , weight: .semibold))
            Text("""
                Мы отправили SMS с кодом на номер
                 \(phoneNumber)
                """)
            .padding([.bottom] , 30)
            .multilineTextAlignment(.center)
            Spacer()
            TextField("___-___-__", text: $codeNumber)
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
                Text("ЗАРЕГЕСТРИРОВАТЬСЯ")
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
            Image("okImage")
                .frame(width: 86 , height: 100)
            Spacer()
        }
    }
}

#Preview {
    ConfirmRegistrationView()
}
