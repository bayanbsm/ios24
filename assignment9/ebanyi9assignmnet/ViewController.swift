//
//  ViewController.swift
//  ebanyi9assignmnet
//
//  Created by Symbat Bayanbayeva on 15.11.2024.
//

import UIKit

struct Book {
    let title: String
    let author: String
    let genre: String
    let cover: UIImage

}
struct Song {
    let title: String
    let author: String
    let genre: String
    let cover: UIImage?

}
struct Movie {
    let title: String
    let author: String
    let genre: String
    let cover: UIImage?
}
class ViewController: UIViewController{
    
    
    let favouriteBooks : [Book] = [
        Book(title: "Frankenstein", author: "Mary Shelley", genre: "Gothic Fiction", cover: UIImage(named: "frankenstein")!),
        Book(title: "White Nights", author: "Fyodor Dostoevsky", genre: "Fiction", cover: UIImage(named: "whitenights")!),
        Book(title: "Demian", author: "Hermann Hesse", genre: "Fiction", cover: UIImage(named: "demian")!),
        Book(title: "The Metamorphosis", author: "Franz Kafka", genre: "Phychological Fiction", cover: UIImage(named: "themetamorphosis")!),
        Book(title: "The Minds of Billy Milligan", author: "Daniel Keyes", genre: "Biography", cover: UIImage(named: "themindsofbillymilligan")!),
        Book(title: "The Great Gatsby", author: "F.Scott Fitzgerald", genre: "Romance", cover: UIImage(named: "thegreatgatsby")!),
        Book(title: "The Big Four", author: "Agatha Cristie", genre: "Detective Fiction", cover: UIImage(named: "thebigfour")!),
        Book(title: "Arch of Triumph", author: "Erich Marie Remark", genre: "Novel", cover: UIImage(named: "archoftriumph")!),
        Book(title: "The Picture of Dorian Gray", author: "Oscar Wilde", genre: "Horror", cover:UIImage(named: "doriangray")!),
        Book(title: "Tokyo Decadence", author: "Ryu Murakami", genre: "Fiction", cover: UIImage(named: "topaz")!)
        
    ]
        let favouriteSongs : [Song] = [
            Song(title: "Water", author: "Beyonce", genre: "Afro beat", cover: UIImage(named: "thegift")),
            Song(title: "Mystery Lady", author: "Masego", genre: "Afro beat", cover: UIImage(named: "masego")),
            Song(title: "Sky", author: "Playboi Carti", genre: "Rap", cover: UIImage(named: "red")!),
            Song(title: "Timeless", author: "The Weeknd", genre: "R&B", cover: UIImage(named: "timeless_weeknd")),
            Song(title: "Witchy", author: "Kaytranada ft. Childish Gambino", genre: "Electro", cover: UIImage(named: "timeless")),
            Song(title: "Niggas in Paris", author: "Jay Z & Kanye West", genre: "Rap", cover: UIImage(named: "watchthethrone")),
            Song(title: "Rick Flair Drip", author: "Offset & Metro Boomin", genre: "Rap", cover: UIImage(named: "withoutwarning")),
            ]
        let favouriteMovies : [Movie] = [
            Movie(title: "The Great Gatsby", author: "Baz Luhrmann", genre: "Drama", cover: UIImage(named: "gatsby")),
            Movie(title: "Gone Girl", author: "Baz Luhrmann", genre: "Afro beat", cover: UIImage(named: "gonegirl")),
            Movie(title: "How to get away from a guy in 10 days", author: "Baz Luhrmann", genre: "Afro beat", cover: UIImage(named: "howto")),
            Movie(title: "Karate Kid", author: "Baz Luhrmann", genre: "Afro beat", cover: UIImage(named: "thegift")),
            Movie(title: "Lord of the rings", author: "Baz Luhrmann", genre: "Afro beat", cover: UIImage(named: "lord")),
            Movie(title: "Ocean's 8", author: "Baz Luhrmann", genre: "Afro beat", cover: UIImage(named: "thegift")),
            
            ]
    
    
}
class MoviesViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private var favouriteMovies: [Movie] = [] // Данные для таблицы

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        favouriteMovies = [
            Movie(title: "The Great Gatsby", author: "Baz Luhrmann", genre: "Drama", cover: UIImage(named: "gatsby")),
            Movie(title: "Gone Girl", author: "David Fincher", genre: "Thriller", cover: UIImage(named: "gonegirl")),
            Movie(title: "How to get away from a guy in 10 days", author: "Donald Petrie", genre: "Romcom", cover: UIImage(named: "howto")),
            Movie(title: "Karate Kid", author: "John G. Avildsen", genre: "Martial arts drama", cover: UIImage(named: "karatekid")),
            Movie(title: "Lord of the rings", author: "Peter Jackson", genre: "Epic fantasy adventure", cover: UIImage(named: "lord")),
            Movie(title: "Ocean's 8", author: "Ross and Olivia Milch", genre: "Comedy", cover: UIImage(named: "oceans8")),
            
            ]
        tableView.reloadData() // Перезагрузка данных таблицы

    }
}

extension MoviesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteMovies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMovie", for: indexPath) as! Movies
        let movie = favouriteMovies[indexPath.row]
        cell.configure(with: movie)

        return cell
    }
}
class SongsViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private var favouriteSongs: [Song] = [] // Данные для таблицы

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        favouriteSongs = [
            Song(title: "Water", author: "Beyonce", genre: "Afro beat", cover: UIImage(named: "thegift")),
            Song(title: "Mystery Lady", author: "Masego", genre: "Afro beat", cover: UIImage(named: "masego")),
            Song(title: "Sky", author: "Playboi Carti", genre: "Rap", cover: UIImage(named: "red")!),
            Song(title: "Timeless", author: "The Weeknd", genre: "R&B", cover: UIImage(named: "timeless_weeknd")),
            Song(title: "Witchy", author: "Kaytranada ft. Childish Gambino", genre: "Electro", cover: UIImage(named: "timeless")),
            Song(title: "Niggas in Paris", author: "Jay Z & Kanye West", genre: "Rap", cover: UIImage(named: "watchthethrone")),
            Song(title: "Rick Flair Drip", author: "Offset & Metro Boomin", genre: "Rap", cover: UIImage(named: "withoutwarning")),
            ]
        tableView.reloadData() // Перезагрузка данных таблицы

    }
}

extension SongsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteSongs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellSong", for: indexPath) as! Songs
        let song = favouriteSongs[indexPath.row]
        cell.configure(with: song)
        return cell
    }
}
class BooksViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private var favouriteBooks: [Book] = [] // Данные для таблицы

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        favouriteBooks = [
            Book(title: "Frankenstein", author: "Mary Shelley", genre: "Gothic Fiction", cover: UIImage(named: "frankenstein")!),
            Book(title: "White Nights", author: "Fyodor Dostoevsky", genre: "Fiction", cover: UIImage(named: "whitenights")!),
            Book(title: "Demian", author: "Hermann Hesse", genre: "Fiction", cover: UIImage(named: "demian")!),
            Book(title: "The Metamorphosis", author: "Franz Kafka", genre: "Phychological Fiction", cover: UIImage(named: "themetamorphosis")!),
            Book(title: "The Minds of Billy Milligan", author: "Daniel Keyes", genre: "Biography", cover: UIImage(named: "themindsofbillymilligan")!),
            Book(title: "The Great Gatsby", author: "F.Scott Fitzgerald", genre: "Romance", cover: UIImage(named: "thegreatgatsby")!),
            Book(title: "The Big Four", author: "Agatha Cristie", genre: "Detective Fiction", cover: UIImage(named: "thebigfour")!),
            Book(title: "Arch of Triumph", author: "Erich Marie Remark", genre: "Novel", cover: UIImage(named: "archoftriumph")!),
            Book(title: "The Picture of Dorian Gray", author: "Oscar Wilde", genre: "Horror", cover:UIImage(named: "doriangray")!),
            Book(title: "Tokyo Decadence", author: "Ryu Murakami", genre: "Fiction", cover: UIImage(named: "topaz")!)
            
        ]
        tableView.reloadData() // Перезагрузка данных таблицы

    }
}

extension BooksViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteBooks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellBook", for: indexPath) as! Books
        let book = favouriteBooks[indexPath.row]
        cell.configure(with: book)
        return cell
    }
}
