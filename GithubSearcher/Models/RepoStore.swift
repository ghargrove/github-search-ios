//
//  RepoStore.swift
//  GithubSearcher
//
//  Created by Graham Hargrove on 2/5/20.
//  Copyright © 2020 Graham Hargrove. All rights reserved.
//

import Foundation
import Combine

class RepoStore: ObservableObject {
  @Published private(set) var repos: [Repo] = []
  
  // We need a way to search repos using our github service
  func search(query: String) {
    print(query)
  }
}
