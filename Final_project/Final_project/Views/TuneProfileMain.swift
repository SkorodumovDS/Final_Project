//
//  TuneProfileMain.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 30.12.2023.
//

import SwiftUI

struct TuneProfileMain: View {
    @State var name : String = "Имя"
    @State var surname : String = "Фамилия"
    @State var birthday : String = "01.01.2020"
    @State var city : String = "Напишите название"
    @State var male : String = "Мужской"
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 24 , height: 24)
                        .foregroundStyle(.orange)
                    Spacer()
                    Text("Основная информация")
                        .font(.system(size: 14 , weight: .semibold))
                    Spacer()
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 24 , height: 24)
                        .foregroundStyle(.orange)
                }.padding(.vertical , 12)
                    .padding(.horizontal , 12)
                Text("Имя")
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                TextField("name", text: $name)
                    .background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
                    .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                Text("Фамилия")
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                TextField("surname", text: $surname)
                    .background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
                    .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                Text("Пол")
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                Picker("Пол", selection: $male) {
                    Text("Мужской")
                        .tag("Мужской")
                    Text("Женский")
                        .tag("Женский")
                }.pickerStyle(.segmented)
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                Text("Дата рождения")
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                TextField("birthday", text: $birthday)
                    .background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
                    .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                Text("Родной город")
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                TextField("city", text: $city)
                    .background(Color.init(cgColor: CGColor(red: 245, green: 243, blue: 238, alpha: 1)))
                    .shadow(color: Color(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 25, x: -9, y: 4)
                    .padding(.vertical , 12)
                    .padding(.horizontal , 12)
                
            }
        }
    }
}

#Preview {
    TuneProfileMain()
}
