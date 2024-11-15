//
//  Books.swift
//  ebanyi9assignmnet
//
//  Created by Symbat Bayanbayeva on 15.11.2024.
//

import UIKit

class Books: UITableViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var genre: UILabel!
    
    private var book: Book?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }


    func configure(with book: Book) {
        self.book = book
        coverImage.image = book.cover
        title.text = book.title
        descriptionLabel.text = book.author
        genre.text = book.genre
    }

}
