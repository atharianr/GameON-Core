//
//  APICall.swift
//  GameON
//
//  Created by Atharian Rahmadani on 04/10/24.
//

import Foundation

struct RawgAPI {
    static let baseUrl = "https://api.rawg.io/api/"
}

public protocol Endpoint {
    var url: String { get }
    var parameters: [String: String] { get }
}

public enum Endpoints {
    public enum Gets: Endpoint {
        case games(apiKey: String)
        case searchGames(apiKey: String, query: String)
        case details(apiKey: String, id: Int)
        
        public var url: String {
            switch self {
            case .games: return "\(RawgAPI.baseUrl)games"
            case .searchGames: return "\(RawgAPI.baseUrl)games"
            case .details(_, let id): return "\(RawgAPI.baseUrl)games/\(id)"
            }
        }
        
        public var parameters: [String: String] {
            switch self {
            case .games(let apiKey): return [
                "key": apiKey,
                "page_size": "10",
                "page": "1"
            ]
            case .searchGames(let apiKey, let query): return [
                "key": apiKey,
                "search": query
            ]
            case .details(let apiKey, _): return [
                "key": apiKey
            ]
            }
        }
    }
}
