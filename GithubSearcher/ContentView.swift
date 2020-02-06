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
//        ForEach(repos) { (repo: Repo) in
//          RepoRow(repo: repo)
//        }
      }.navigationBarTitle("Github repos")
    }
  }
  
  func searchGithub() {
    print(query)
    // We will use our service from the EnvObject here
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
