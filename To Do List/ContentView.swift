//
//  ContentView.swift
//  To Do List
//
//  Created by Student on 2/4/21.
//

import SwiftUI

struct ContentView: View
{
    var food = ["First Thing","Second Thing","Thired Thing","Fourth Thing", "Fifth Thing"]
    var body: some View
    {
        NavigationView
        {
            
       
        List
        {
            ForEach(food, id: \.self)
            {
                thing in Text(thing)
            }
            
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
