//
//  GithubService.swift
//  GithubSearcher
//
//  Created by Graham Hargrove on 2/5/20.
//  Copyright © 2020 Graham Hargrove. All rights reserved.
//

import Foundation

struct RepoResponse: Decodable {
  let items: [Repo]
}

class RepoService {
  let decoder = JSONDecoder()
  
  func search(_ query: String, handler: @escaping (Result<[Repo], Error>) -> Void) {
    guard var urlComponents = URLComponents(string: "https://api.github.com/search/repositories") else {
      print("Couldnt create url")
      return
    }
    
    urlComponents.queryItems = [URLQueryItem(name: "q", value: query)]
    
    if let url = urlComponents.url {
      URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
        if let error = error {
          handler(.failure(error))
        } else if let data = data {
          do {
            let result = try self?.decoder.decode(RepoResponse.self, from: data)
            handler(.success(result?.items ?? []))
          } catch {
            handler(.failure(error))
          }
        }
      }.resume()
    }
  }
}
