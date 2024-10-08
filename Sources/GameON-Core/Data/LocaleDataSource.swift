//
//  LocaleDataSource.swift
//  Core
//
//  Created by Atharian Rahmadani on 07/10/24.
//

import Foundation
import Combine

public protocol LocaleDataSource {
    associatedtype Request
    associatedtype Response
    
    func getList(request: Request?) -> AnyPublisher<[Response], Error>
    func addList(entities: [Response]) -> AnyPublisher<Bool, Error>
    func get(id: Int) -> AnyPublisher<Response, Error>
    func add(entity: Response) -> AnyPublisher<Bool, Error>
    func update(id: Int, entity: Response) -> AnyPublisher<Bool, Error>
    func delete(id: Int) -> AnyPublisher<Bool, Error>
    func isExist(id: Int) -> AnyPublisher<Bool, Error>
}
