//
//  ContentView.swift
//  To Do List
//
//  Created by Student on 2/4/21.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        NavigationView
        {
            
       
        List
        {
            Text("First Thing")
            Text("Second Thing")
            Text("Thired Thing")
            Text("Fourth Thing")
            Text("Fifth Thing")
        }
        .navigationBarTitle("Food")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
