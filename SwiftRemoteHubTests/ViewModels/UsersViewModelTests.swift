//
//  UsersViewModelTests.swift
//  SwiftRemoteHubTests
//
//  Created by Alexander on 10/1/26.
//

@testable import SwiftRemoteHub
import XCTest

@MainActor
final class UsersViewModelTests: XCTestCase {
  
  private var mockRepository: MockUsersRepository!
  private var viewModel: UsersViewModel!
  
  override func setUp() {
    super.setUp()
    mockRepository = MockUsersRepository()
    viewModel = UsersViewModel(repository: mockRepository)
  }
  
  override func tearDown() {
    mockRepository = nil
    viewModel = nil
    super.tearDown()
  }
  
  
  func test_loadUsers_sucess_setUsers() async throws {
    
    // GIVEN
    let expectedUsers = [
      User(id: 1, name: "John", email: "jhon@mail.com"),
      User(id: 2, name: "Jane", email: "jane@mail.com")
    ]
    
    mockRepository.result = .success(expectedUsers)
    
    // WHEN
    await viewModel.loadUsers()
    
    // THEN
    XCTAssertEqual(viewModel.users.count, 2)
    XCTAssertFalse(viewModel.isLoading)
    XCTAssertNil(viewModel.errorMessage)
  }
  
  func test_loadUsers_failure_setsErrorMessage() async {
    
    // GIVEN
    mockRepository.result = .failure(URLError(.badServerResponse))
    
    // WHEN
    await viewModel.loadUsers()
    
    // THEN
    XCTAssertTrue(viewModel.users.isEmpty)
    XCTAssertFalse(viewModel.isLoading)
    XCTAssertNotNil(viewModel.errorMessage)
  }
}
