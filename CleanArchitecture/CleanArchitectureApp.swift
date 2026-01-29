//
//  CleanArchitectureApp.swift
//  CleanArchitecture
//
//  Created by Angelos Staboulis on 29/1/26.
//

import SwiftUI

@main
struct CleanArchitectureApp: App {
   
    var body: some Scene {
        let dataSource = UserRemoteDataSource()
        
        let repository = UserRepositoryImpl(dataSource: dataSource)
        
        let useCase = FetchUsersUseCase(repository: repository)
        
        let viewModel = UserListViewModel(fetchUsersUseCase: useCase)

        WindowGroup {
            UserListView(viewModel: viewModel)
        }
    }
}
