//
//  QuoteViewModel.swift
//  Quote
//
//  Created by Ahmed Ali on 14/02/2023.
//

import Foundation

protocol QuotesViewModel: ObservableObject {
    func getRandomQuotes() async
}

@MainActor
final class QuotesViewModelImpl: QuotesViewModel {
    @Published private(set) var quotes: [Quote] = []
    private let service: QuoteService
    
    init(service: QuoteService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
}
