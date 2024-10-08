//
//  Repository.swift
//  Core
//
//  Created by Atharian Rahmadani on 07/10/24.
//

import Foundation
import Combine

public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
