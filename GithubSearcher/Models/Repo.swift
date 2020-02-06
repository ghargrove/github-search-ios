//
//  Repo.swift
//  GithubSearcher
//
//  Created by Graham Hargrove on 2/5/20.
//  Copyright © 2020 Graham Hargrove. All rights reserved.
//

struct Repo: Decodable, Identifiable {
  let id: Int
  let name: String
  let description: String
}
