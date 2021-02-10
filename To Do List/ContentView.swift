//
//  ContentView.swift
//  To Do List
//
//  Created by Student on 2/4/21.
//

import SwiftUI

struct ContentView: View
{

    @ObservedObject var toDoList = ToDoList()
    var body: some View
    {
        NavigationView
        {
            
       
        List
        {
            ForEach(toDoList.items)
            {
                thing in HStack
                {
                    VStack(alignment: .leading)
                    {
                        Text(thing.priority).font(.headline)
                        Text(thing.description)
                    }
                    Spacer()
                    Text(thing.dueDate, style: .date)
                }
            }
            .onMove(perform: { indices, newOffset in
                toDoList.items.move(fromOffsets: indices, toOffset: newOffset)
            })
            .onDelete(perform: { indexSet in
                toDoList.items.remove(atOffsets: indexSet)
            })
        }
        .navigationBarTitle("toDoList")
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
    var description = String ()
    var dueDate = Date ()
}
