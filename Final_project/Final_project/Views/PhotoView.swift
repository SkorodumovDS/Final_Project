//
//  PhotoView.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 30.12.2023.
//

import SwiftUI

struct PhotoView: View {
    
    private let gridItems : [GridItem] = [
        .init(.flexible() , spacing: 2),
        .init(.flexible() , spacing: 2),
        .init(.flexible() , spacing: 2)]
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Divider()
                HStack{
                    Text("Альбомы")
                        .font(.system(size: 14 , weight: .semibold))
                        .padding([.trailing] , 20)
                    Text("1")
                    Spacer()
                    Button(action: {}, label: {
                        Text("Показать все")
                            .font(.system(size: 14, weight: .heavy))
                            .foregroundStyle(.orange)
                            .padding([.bottom]  , 5)
                    })
                }.padding(.horizontal , 12)
                ScrollView(.horizontal){
                    Image("exampleStories1")
                        .resizable()
                        .frame(width: 100 , height: 80)
                        .clipped()
                }
                Divider()
                HStack{
                    Text("Все фотографии")
                        .font(.system(size: 14 , weight: .semibold))
                        .padding([.trailing] , 20)
                    Text("8")
                    Spacer()
                    Button(action: {}, label: {
                        Text("Показать все")
                            .font(.system(size: 14, weight: .heavy))
                            .foregroundStyle(.orange)
                            .padding([.bottom]  , 5)
                    })
                }.padding(.horizontal , 12)
                LazyVGrid(columns: gridItems , spacing: 2) {
                    ForEach(0 ... 7 , id: \.self) { index in
                        Image("exampleStories1")
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: 100 , height: 80)
                        
                    }
                }
            }.navigationTitle("Фотографии")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button() {
                            
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
        }
    }
}

#Preview {
    PhotoView()
}
