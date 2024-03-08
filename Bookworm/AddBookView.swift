//
//  AddBookView.swift
//  Bookworm
//
//  Created by Masoud Safari on 2024-03-07.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var author = ""
    @State private var genre = "Fantasy"
    @State private var review = ""
    @State private var rating = 3
    
    @State private var showingAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    let genres = ["fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name of book", text: $title)
                    TextField("Author's name", text: $author)
                    
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section("Write a review") {
                    TextEditor(text: $review)
                    RatingView(rating: $rating)
                }
                
                Section {
                    Button("Save") {
                        guard title.trimmingCharacters(in: .whitespaces) != "" else {
                            alertTitle = "Invalid title"
                            alertMessage = "The title is empty. Please enter a title."
                            showingAlert = true
                            return
                        }
                        
                        guard author.trimmingCharacters(in: .whitespaces) != "" else {
                            alertTitle = "Invalid author"
                            alertMessage = "The author is empty. Please enter an author."
                            showingAlert = true
                            return
                        }
                        
                        let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        modelContext.insert(newBook)
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Book")
            .alert(alertTitle, isPresented: $showingAlert) {
            } message: {
                Text(alertMessage)
            }
        }
    }
}

#Preview {
    AddBookView()
}
