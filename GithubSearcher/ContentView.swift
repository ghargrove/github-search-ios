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
  
  let repos = [
    Repo(id: 1, name: "react", description: "React framework"),
    Repo(id: 2, name: "react-redux", description: "A react state framework")
  ]
  
  var body: some View {
    NavigationView {
      List {
        TextField("Enter repo name..", text: $query, onCommit: searchGithub)
        ForEach(repos) { (repo: Repo) in
          RepoRow(repo: repo)
        }
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
