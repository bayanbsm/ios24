//
//  Movies.swift
//  ebanyi9assignmnet
//
//  Created by Symbat Bayanbayeva on 15.11.2024.
//

import UIKit

class Movies: UITableViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var genre: UILabel!
    
//    weak var delegate: MoviesCellDelegate?
    private var movie: Movie?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }


    func configure(with movie: Movie) {
        self.movie = movie 
        coverImage.image = movie.cover
        title.text = movie.title
        descriptionLabel.text = movie.author
        genre.text = movie.genre
    }

}

