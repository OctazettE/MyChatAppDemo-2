//
//  TitleRow.swift
//  MyChatAppDemo
//
//  Created by Dmytro Popelnukh on 2023-03-02.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://sun9-north.userapi.com/sun9-80/s/v1/ig1/7Qn0_rvohRSFqq9C1tQta90Pjx4HhLK4EXQuFn3ZDhF4MSGFLZz0mznP2EADsYuXsHRpjZkw.jpg?size=1086x724&quality=96&type=album")
    var name = "Ed Baldwin"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill").foregroundColor(.gray).padding(10)
                .background(.white)
                .cornerRadius(50)
            
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
