//
//  ContentView.swift
//  Gestor_de_Tareas
//
//  Created by Lluís Espert Cuquerella on 10/9/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    
    @Query(sort:\Tareas.nombre) var tareas:[Tareas]
    
    @State private var isModal = false
    
    func deleteData(_ item:Tareas){context.delete(item)}
    
    var body: some View {
        
        NavigationStack{
            
            List{
                
                ForEach(tareas, id:\.id){item in
                    
                    
                    
                    NavigationLink(destination: {Pepinos_En_Vinagre(modelo: item)}, label: {Text(item.nombre)})
                    
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet{
                        
                        deleteData(tareas[index])
                        
                    }
                    
                })
            }
            .toolbar{
                
                Button(action: {
                    
                    //Abrir modal
                    isModal = true
                    
                    
                    
                }, label: {
                    Image(systemName: "plus")
                })
                
            }.sheet(isPresented: $isModal, content: {
                Vista_Tareas()
            })
        }
        
    }
}

#Preview {
    ContentView()
    
        .modelContainer(for: Tareas.self)
    
}
