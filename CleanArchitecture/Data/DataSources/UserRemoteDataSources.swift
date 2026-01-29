//
//  UserRemoteDataSources.swift
//  CleanArchitecture
//
//  Created by Angelos Staboulis on 29/1/26.
//

import Foundation
struct UserRemoteDataSource {

    func fetchUsers() async throws -> [User] {
        try await Task.sleep(nanoseconds: 1_000_000_000) // simulate network

        return [
            User(id: 1, name: "Alice"),
            User(id: 2, name: "Bob"),
            User(id: 3, name: "Charlie")
        ]
    }
}
