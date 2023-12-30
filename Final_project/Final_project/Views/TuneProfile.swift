//
//  TuneProfile.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 30.12.2023.
//

import SwiftUI

struct TuneProfile: View {
    var body: some View {
        VStack(alignment: .leading){
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20 , height: 20)
                    .font(.system(size: 20))
                    .foregroundStyle(.orange)
                    .padding(4)
            })
            Text("Профиль")
                .font(.system(size: 20, weight: .heavy))
            Divider()
            
                Text("Основаная информация")
                Text("Контакты")
                Text("Интересы")
                Text("Образование")
                Text("Карьера")
            
        }.background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
            .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
            .frame(width: 308, height: 808)
    }
}

#Preview {
    TuneProfile()
}
