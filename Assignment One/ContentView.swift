//
//  ContentView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/16/22.
//

import SwiftUI

struct ContentView: View {
    
    var submissions: [(name: String, view: AnyView)] {
        [
            ("Megan Worrel", AnyView(MeganWorrel()))
        ].sorted(by: {$0.name < $1.name})
    }
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(submissions.indices){ submission in
                    NavigationLink(destination: submissions[submission].view){
                        Text(submissions[submission].name)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
