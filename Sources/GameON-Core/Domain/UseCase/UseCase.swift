//
//  UseCase.swift
//  Core
//
//  Created by Atharian Rahmadani on 07/10/24.
//

import Combine

public protocol UseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
