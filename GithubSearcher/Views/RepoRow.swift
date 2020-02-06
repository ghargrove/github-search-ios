//
//  RepoRow.swift
//  GithubSearcher
//
//  Created by Graham Hargrove on 2/5/20.
//  Copyright © 2020 Graham Hargrove. All rights reserved.
//

import SwiftUI

struct RepoRow: View {
  let repo: Repo
  var body: some View {
    VStack(alignment: .leading) {
      Text("\(repo.name)").font(.headline)
      Text("\(repo.description ?? "")")
    }
  }
}

struct RepoRow_Previews: PreviewProvider {
  static var previews: some View {
    RepoRow(repo: Repo(
    id: 12, name: "React", description: "Cool frontend frameworkd"))
  }
}
