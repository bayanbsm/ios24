//
//  ViewController.swift
//  collection
//
//  Created by Symbat Bayanbayeva on 23.10.2024.
//

import UIKit

struct Book {
    let title: String
    let author: String
    let genre: String
    let cover: UIImage
}
class ViewController: UIViewController {
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
    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            print ("you tapped me!")
        }
    }

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteBooks.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Movies
        let book = favouriteBooks[indexPath.row]
        cell.configure(with: book)

        return cell
    }
    
    
}
