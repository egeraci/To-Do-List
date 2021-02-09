//
//  ContentView.swift
//  To Do List
//
//  Created by Student on 2/4/21.
//

import SwiftUI

struct ContentView: View
{
   @State var food = ["First Thing","Second Thing","Thired Thing","Fourth Thing", "Fifth Thing"]
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
            .onMove(perform: { indices, newOffset in
                food.move(fromOffsets: indices, toOffset: newOffset)
            })
            .onDelete(perform: { indexSet in
                food.remove(atOffsets: indexSet)
            })
        }
        .navigationBarTitle("Food")
        .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ToDoItem: Identifiable{
    var id = UUID ()
    var priority = String ()
    var discription = String ()
    var dueDate = Date ()
}
