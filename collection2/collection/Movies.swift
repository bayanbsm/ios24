//
//  Movies.swift
//  collection
//
//  Created by Symbat Bayanbayeva on 23.10.2024.
//

import UIKit
protocol MoviesCellDelegate: AnyObject {
    func didTapButton(with book: Book)
}
class Movies: UITableViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var showDescriptionButton: UIButton!
    
    weak var delegate: MoviesCellDelegate?
    private var book: Book?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    func configure(with book: Book) {
        self.book = book  // Сохраняем книгу для дальнейшего использования
        coverImage.image = book.cover
        title.text = book.title
        descriptionLabel.text = book.author
        genre.text = book.genre
    }
    @IBAction func showDescriptionTapped(_ sender: UIButton) {
        print("Кнопка нажата")
        guard let book = book else { return }
        delegate?.didTapButton(with: book)
    }
}
