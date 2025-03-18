//
//  LoginView.swift
//  CamelMap
//
//  Created by JongHyuk Park on 3/12/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            VStack(alignment: .center) {
                HStack(spacing: 24) {
                    Image(systemName: "fork.knife")
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                    Text("향원이와 입맛친구")
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.vertical, 80)
            
            Spacer()
            
            Text(verbatim: "로그인이란것을 한번 해 보시겠습니까요?")
            
            Button {
                print("Google Login")
            } label: {
                HStack {
                    Image("google")
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Text("Google")
                        .font(.title3)
                        .foregroundStyle(Color.black)
                    
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .overlay {
                    Capsule().strokeBorder(Color.black)
                }
            }
            
            Button {
                print("Apple Login")
            } label: {
                HStack {
                    Image("apple")
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Text("Apple")
                        .font(.title3)
                        .foregroundStyle(Color.black)
                    
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .overlay {
                    Capsule().strokeBorder(Color.black)
                }
            }

            Button {
                print("Facebook Login")
            } label: {
                HStack {
                    Image("facebook")
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Text("Facebook")
                        .font(.title3)
                        .foregroundStyle(Color.black)
                    
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .overlay {
                    Capsule().strokeBorder(Color.black)
                }
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    LoginView()
}
