//
//  FetchUserUseCase.swift
//  CleanArchitecture
//
//  Created by Angelos Staboulis on 29/1/26.
//

import Foundation
struct FetchUsersUseCase {

    private let repository: UserRepository

    init(repository: UserRepository) {
        self.repository = repository
    }

    func execute() async throws -> [User] {
        try await repository.fetchUsers()
    }
}
