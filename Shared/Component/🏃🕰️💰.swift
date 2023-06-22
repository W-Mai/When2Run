//
//  🏃🕰️💰.swift
//  When2Run
//
//  Created by W-Mai on 2023/6/22.
//

import SwiftUI

struct 🏃🕰️💰: View {
    
    @State private var 🤑？ = false
    
    var body: some View {
        VStack {
            HStack{
                VStack{
                    Text("08:00:00").font(.system(size: 32, design: .monospaced)).fontWeight(.black)
                        .frame(maxWidth: .infinity)
                }
                .frame(maxHeight: .infinity)
                .padding(.vertical)
                .background(Color(UIColor.systemGray5))
                .cornerRadius(10)
                Button {
                    🤑？.toggle()
                } label: {
                    VStack {
                        Image(systemName:
                                🤑？
                              ? "eye"
                              : "eye.slash"
                        )
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                        
                        Text(
                            🤑？
                            ? "100.00"
                            : "****"
                        )
                        .lineLimit(1)
                        .minimumScaleFactor(0.6)
                        .font(.system(size: 20, design: .monospaced))
                        .fontWeight(.black)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(6)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .aspectRatio(1.0, contentMode: .fit)
                }.foregroundColor(.black)
            }
            Spacer()
            HStack{
                Button {
                    print("hello")
                } label: {
                    Image(systemName: "gear")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                        .foregroundColor(.black)
                }
                Spacer()
                VStack{
                    Text("08:00:00").foregroundColor(Color(UIColor.systemGray2)).font(.system(size: 12, design: .monospaced)).fontWeight(.black)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 6)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(20)
            }
        }
        .padding([.horizontal, .top], 20)
        .padding(.bottom, 10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .shadow(radius: 10)
        .frame(width: 330, height: 150)
    }
}

struct 🏃🕰️💰_Previews: PreviewProvider {
    static var previews: some View {
        🏃🕰️💰()
    }
}
