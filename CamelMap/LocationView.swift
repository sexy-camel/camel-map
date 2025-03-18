//
//  LocationView.swift
//  CamelMap
//
//  Created by JongHyuk Park on 3/12/25.
//

import SwiftUI

struct LocationView: View {
    @State var item: Item
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 40) {
                VStack {
                    if let url = URL(string: item.thumbnail) {
                        AsyncImage(url: url, scale: 0.8) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 350).clipped()
                        //.aspectRatio(1, contentMode: .fit)
                        
                        
                        
                    }
                    
                    HStack {
                        Text(verbatim: item.name)
                        Divider().frame(height: 8)
                        Text(verbatim: item.category)
                            .font(.caption)
                        
                        Image(systemName: "heart")
                            .foregroundStyle(Color.gray)
                    }
                    
                    Text("경기도 성남시 수정구 228-7")
                        .font(.caption)
                }
                
                VStack {
                    Text("내 점수")
                    
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
                
                
                VStack {
                    Text("메뉴")
                    HStack {
                        VStack {
                            Color.gray
                                .frame(width: 100, height: 100)
                            Text("짜장면")
                        }
                        VStack {
                            Color.gray
                                .frame(width: 100, height: 100)
                            Text("해물짬뽕")
                        }
                        VStack {
                            Color.gray
                                .frame(width: 100, height: 100)
                            Text("탕수육")
                        }
                    }
                }
                
                VStack(spacing: 12) {
                    Text("리뷰")
                    VStack {
                        Text("비행소년")
                            .font(.footnote)
                        
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            Image(systemName: "star")
                        }
                        Text("여기 해물짬뽕밥 짱 마쉿습니다")
                            .font(.caption)
                    }
                    
                    VStack {
                        Text("비행소년1")
                            .font(.footnote)
                        
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            Image(systemName: "star")
                        }
                        Text("여기 해물짬뽕밥 짱 마쉿습니다")
                            .font(.caption)
                    }
                    
                    VStack {
                        Text("비행소년2")
                            .font(.footnote)
                        
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            Image(systemName: "star")
                        }
                        Text("여기 해물짬뽕밥 짱 마쉿습니다")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
            }
        }
    }
}

//#Preview {
//    LocationView(item: sampleData[0])
//}
