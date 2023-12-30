//
//  PostMenu.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 30.12.2023.
//

import SwiftUI

struct PostMenu: View {
    var body: some View {
        VStack(alignment: .leading){
            Button(action: {}, label: {
                Text("Сохранить в закладках")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundStyle(.black)
                    .padding([.bottom]  , 5)
            })
            Button(action: {}, label: {
                Text("Закрепить")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundStyle(.black)
                    .padding([.bottom]  , 5)
            })
            Button(action: {}, label: {
                Text("Выключить комментирование")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundStyle(.black)
                    .padding([.bottom]  , 5)
            })
            Button(action: {}, label: {
                Text("Скопировать ссылку")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundStyle(.black)
                    .padding([.bottom]  , 5)
            })
            Button(action: {}, label: {
                Text("Архивировать запись")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundStyle(.black)
                    .padding([.bottom]  , 5)
            })
            Button(action: {}, label: {
                Text("Удалить")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundStyle(.black)
                    .padding([.bottom]  , 5)
            })
           
           
            
        }.background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
            .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
            .frame(width: 300, height: 250)
    }
}

#Preview {
    PostMenu()
}
