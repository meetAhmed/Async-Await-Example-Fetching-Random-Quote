//
//  QuoteView.swift
//  Quote
//
//  Created by Ahmed Ali on 14/02/2023.
//

import SwiftUI

struct QuoteView: View {
    let quote: Quote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "tv")
                    .font(.system(size: 12, weight: .black))
                Text(quote.anime)
            }
            Text("Character: \(quote.character)")
            Text("Quote: \(quote.quote)")
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(quote: Quote.dummyData.first!)
    }
}
