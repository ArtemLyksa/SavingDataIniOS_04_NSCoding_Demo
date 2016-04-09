//
//  Library.swift
//  NSCodingDemo
//
//  Created by Brian on 12/2/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import Foundation

class Library: NSObject, NSCoding {
  
  var books: [Book] = []
  var authors: [Author] = []
  
    required convenience init?(coder aDecoder: NSCoder) {
        
        guard let books = aDecoder.decodeObjectForKey("books") as? [Book],
            let authors = aDecoder.decodeObjectForKey("authors") as? [Author] else { return nil }
        
        self.init(books:books, authors:authors)
    }
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(books, forKey: "books")
        aCoder.encodeObject(authors, forKey: "authors")

    }
    
  override init() {
    super.init()
  }
  
  init(books:[Book], authors:[Author]) {
    super.init()
    self.books = books
    self.authors = authors
  }
  
  
}