//
//  UserRepository.swift
//  CleanArchitecture
//
//  Created by Angelos Staboulis on 29/1/26.
//

import Foundation
protocol UserRepository {
    func fetchUsers() async throws -> [User]
}
