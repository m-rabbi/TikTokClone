//
//  FeedCell.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.pink)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundStyle(.white)
                }
            
            VStack {
                Spacer()
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("carols.sainz")
                            .fontWeight(.semibold)
                        
                        Text("Rocket ship preapre for takeoff!!!")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 28) {
                        Circle()
                            .frame(width: 44, height: 44)
                            .foregroundStyle(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack(spacing: 4) {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack(spacing: 2) {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("18")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                                .foregroundStyle(.white)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                    }
                    
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
