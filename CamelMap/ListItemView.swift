//
//  ItemView.swift
//  CamelMap
//
//  Created by JongHyuk Park on 3/18/25.
//

import SwiftUI

struct Item: Identifiable {
    let id: Int
    let name: String
    let thumbnail: String
    let category: String
    let star: Int
}

let sampleData: [Item] = [
    Item(
        id: 1,
        name: "참진짜장",
        thumbnail:"https://lh3.googleusercontent.com/p/AF1QipN6C1RQj1XHhtRv9C_-rQ9szDUCOSle2sZ5a74=s1360-w1360-h1020",
        category: "중화요리",
        star: 10
    ),
    Item(
        id: 2,
        name: "해피빵스데이",
        thumbnail: "https://lh3.googleusercontent.com/p/AF1QipPEwlKc9B8Xu33FdcZ3dXQP5Rtc3P8mjm4udZKS=s1360-w1360-h1020",
        category: "제과점",
        star: 9
    ),
    Item(
        id: 3,
        name: "명륜진사갈비",
        thumbnail: "https://lh3.googleusercontent.com/p/AF1QipPMLRJuCwmSTvGLjvZiGSvVibQcywz2E3OGBOR0=s1360-w1360-h1020",
        category: "한식",
        star: 8
    ),
]

struct ListItemView: View {
    let item: Item
    
    var body: some View {
        HStack(spacing: 8) {
            if let url = URL(string: item.thumbnail) {
                AsyncImage(url: url, scale: 0.5) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            VStack {
                HStack {
                    Text(verbatim: item.name)
                    Divider()
                        .frame(height: 8)
                    Text(verbatim: item.category)
                        .font(.caption)
                }
                .foregroundStyle(Color.black)
                
                HStack {
                    ForEach(0..<5) { i in
                        if item.star - (i * 2) >= 2 {
                            Image(systemName: "star.fill")
                        } else if item.star - (i * 2) == 1 {
                            Image(systemName: "star.leadinghalf.filled")
                        } else {
                            Image(systemName: "star")
                        }
                    }
                }
                .foregroundStyle(Color.orange)
            }
            
            Spacer()
        }
        .frame(height: 100)
    }
}

struct ItemListView: View {
    @State var items: [Item]
    
    var body: some View {
        List(items) { item in
            ListItemView(item: item)
        }
    }
}

#Preview {
    VStack {
        ItemListView(items: sampleData)
    }
}
