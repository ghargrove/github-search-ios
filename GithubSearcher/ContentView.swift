//
//  ContentView.swift
//  GithubSearcher
//
//  Created by Graham Hargrove on 2/5/20.
//  Copyright © 2020 Graham Hargrove. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var query = "React"
  @EnvironmentObject var repoStore: RepoStore
  
  var body: some View {
    NavigationView {
      List {
        TextField("Enter repo name..", text: $query, onCommit: searchGithub)
        ForEach(repoStore.repos) { (repo: Repo) in
          RepoRow(repo: repo)
        }
      }.navigationBarTitle("Github repos")
    }
  }
  
  func searchGithub() {
    repoStore.search(query: query)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
