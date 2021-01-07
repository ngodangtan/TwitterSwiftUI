//
//  ConversationCell.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 07/01/2021.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image("venom-10")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 50)
                    .cornerRadius(28)
                
                VStack (alignment: .leading,spacing: 4){
                    Text("venom")
                        .font(.system(size: 14,weight: .semibold))
                    Text("Longer message text to see what happen i do this hah ah")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                .foregroundColor(.black)
                .padding(.trailing)
            }
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
