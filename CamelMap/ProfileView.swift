//
//  ProfileView.swift
//  CamelMap
//
//  Created by JongHyuk Park on 3/11/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    Text(verbatim: "User Name")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    
                    HStack {
                        Text(verbatim: "팔로잉")
                            .font(.callout)
                        Divider()
                        Text(verbatim: "팔로워")
                            .font(.callout)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .border(Color.gray, width: 1)
                
                VStack(alignment: .leading) {
                    Text("내 보관함")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack {
                        Text(verbatim: "식당")
                        Text(verbatim: "내 보관함")
                        Text(verbatim: "내 보관함")
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .border(Color.gray, width: 1)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}


#Preview {
    ProfileView()
}
