//
//  UserRepositoryImpl.swift
//  CleanArchitecture
//
//  Created by Angelos Staboulis on 29/1/26.
//

import Foundation
struct UserRepositoryImpl: UserRepository {
    private let dataSource: UserRemoteDataSource
    
    init(dataSource: UserRemoteDataSource) {
        self.dataSource = dataSource
    }
    
    func fetchUsers() async throws -> [User] {
        try await dataSource.fetchUsers()
    }
}
