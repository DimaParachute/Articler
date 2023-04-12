//
//  ArticleCellView.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 03.04.2023.
//

import SwiftUI

struct ArticleCellView: View {
    
    @State var title: String
    @State var description: String
    @State var urlToImage: String
    
    var body: some View {
        contentView()
    }
    
    @ViewBuilder func contentView() -> some View {
        HStack {
            AsyncImage(url: URL(string: urlToImage)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8.0)
                    .padding(.vertical, 4)
            } placeholder: {
                ProgressView()
            }
            .frame(height: 70.0)
            
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ArticleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCellView(title: "title", description: "description", urlToImage: "https://www.reuters.com/resizer/fKMsc8FWiMiM_Sk7HxETQD54djw=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/BEMCI6XVDFN7JD4OZTKI7CZ3UY.jpg")
    }
}
