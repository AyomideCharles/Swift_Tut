//
//  ListAndTextView.swift
//  iOS tutorial
//
//  Created by Charles on 4/3/26.
//

import SwiftUI

struct ListAndTextView: View {
    @State private var names: [String] = []
    @State private var newName = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
            }
            
            .font(.title)
            .bold()
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List {
                ForEach(names, id: \.description){name in
                Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            TextField("Add name", text: $newName)
                .autocorrectionDisabled()
                .onSubmit {
                    if !newName.isEmpty {
                        names.append(newName)
                        newName = ""
                    }
                }
            Divider()
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            Button{
                if let randomName = names.randomElement(){
                    pickedName = randomName
                    
                    if shouldRemovePickedName {
                        names.removeAll { name in
                            return (name == pickedName)
                            
                        }
                    }
                }
                else {
                    pickedName = ""
                }
                
            }
            label: {
                Text("Pick random name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ListAndTextView()
}
