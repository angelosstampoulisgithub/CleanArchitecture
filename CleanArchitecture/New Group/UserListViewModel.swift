//
//  UserListViewModel.swift
//  CleanArchitecture
//
//  Created by Angelos Staboulis on 29/1/26.
//

import Foundation
import SwiftUI
import Observation

@Observable
final class UserListViewModel {

    private let fetchUsersUseCase: FetchUsersUseCase

    var users: [User] = []
    var isLoading = false
    var errorMessage: String?

    init(fetchUsersUseCase: FetchUsersUseCase) {
        self.fetchUsersUseCase = fetchUsersUseCase
    }

    func loadUsers() {
        isLoading = true

        Task {
            do {
                users = try await fetchUsersUseCase.execute()
            } catch {
                errorMessage = error.localizedDescription
            }
            isLoading = false
        }
    }
}
