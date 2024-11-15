//
//  Songs.swift
//  ebanyi9assignmnet
//
//  Created by Symbat Bayanbayeva on 15.11.2024.
//
import UIKit

class Songs: UITableViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var genre: UILabel!
    
    private var song: Song?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }


    func configure(with song: Song) {
        self.song = song
        coverImage.image = song.cover
        title.text = song.title
        descriptionLabel.text = song.author
        genre.text = song.genre
    }

}
