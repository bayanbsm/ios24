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
    let description: String
}
class ViewController: UIViewController {
    let favouriteBooks : [Book] = [
        Book(title: "Frankenstein", author: "Mary Shelley", genre: "Gothic Fiction", cover: UIImage(named: "frankenstein")!, description: "Frankenstein tells the story of Victor Frankenstein, a young scientist who creates a sapient creature in an unorthodox scientific experiment. Shelley started writing the story when she was 18, and the first edition was published anonymously in London on 1 January 1818, when she was 20. Her name first appeared in the second edition, which was published in Paris in 1821."),
        Book(title: "White Nights", author: "Fyodor Dostoevsky", genre: "Fiction", cover: UIImage(named: "whitenights")!,description: "Like many of Dostoevsky's stories,the story is told in the first person by a nameless narrator. The narrator is a young man living in Saint Petersburg who suffers from loneliness. He gets to know and falls in love with a young woman, but the love remains unrequited as the woman misses her lover, with whom she is finally reunited."),
        Book(title: "Demian", author: "Hermann Hesse", genre: "Fiction", cover: UIImage(named: "demian")!,description: "Demian was first published under the pseudonym Emil Sinclair, the name of the narrator of the story, but Hesse was later revealed to be the author; the tenth edition was the first to bear his name."),
        Book(title: "The Metamorphosis", author: "Franz Kafka", genre: "Phychological Fiction", cover: UIImage(named: "themetamorphosis")!,description: "One of Kafka's best-known works, The Metamorphosis tells the story of salesman Gregor Samsa, who wakes one morning to find himself inexplicably transformed into a huge insect and struggles to adjust to this condition."),
        Book(title: "The Minds of Billy Milligan", author: "Daniel Keyes", genre: "Biography", cover: UIImage(named: "themindsofbillymilligan")!,description: "It tells the story of Billy Milligan, the first person in U.S. history acquitted of a major crime by pleading dissociative identity disorder."),
        Book(title: "The Great Gatsby", author: "F.Scott Fitzgerald", genre: "Romance", cover: UIImage(named: "thegreatgatsby")!,description: "Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway's interactions with Jay Gatsby, the mysterious millionaire with an obsession to reunite with his former lover, Daisy Buchanan."),
        Book(title: "The Big Four", author: "Agatha Cristie", genre: "Detective Fiction", cover: UIImage(named: "thebigfour")!,description: "The Big Four is a work of detective fiction by Agatha Christie, first published in the UK by William Collins & Sons on 27 January 1927 and in the US by Dodd, Mead and Company later in the same year. It features Hercule Poirot, Arthur Hastings, and Inspector Japp. The UK edition retailed at seven shillings and sixpence (7/6) and the US edition at $2.00."),
        Book(title: "Arch of Triumph", author: "Erich Marie Remark", genre: "Novel", cover: UIImage(named: "archoftriumph")!,description: "The novel is set in Paris, in 1939. Despite having no permission to perform surgery, stateless refugee Ravic, a very accomplished German surgeon, has been “ghost-operating” on patients for two years on the behalf of two less-skillful French physicians."),
        Book(title: "The Picture of Dorian Gray", author: "Oscar Wilde", genre: "Horror", cover:UIImage(named: "doriangray")!,description: "The story revolves around a portrait of Dorian Gray painted by Basil Hallward, a friend of Dorian's and an artist infatuated with Dorian's beauty. Through Basil, Dorian meets Lord Henry Wotton and is soon enthralled by the aristocrat's hedonistic worldview: that beauty and sensual fulfillment are the only things worth pursuing in life. Newly understanding that his beauty will fade, Dorian expresses the desire to sell his soul, to ensure that the picture, rather than he, will age and fade."),
        Book(title: "Tokyo Decadence", author: "Ryu Murakami", genre: "Fiction", cover: UIImage(named: "topaz")!,description: "Ai, a timid 22-year-old college student in Tokyo, works as a prostitute for an exclusive escort agency that caters to wealthy, perverted men. To please her clients, Ai has to play out elaborate fantasy scenarios involving sexual humiliation and light sadomasochism/bondage.")

    ]
    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteBooks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Movies
        let book = favouriteBooks[indexPath.row]
        cell.configure(with: book)
        cell.delegate = self
        return cell
    }
}

extension ViewController: MoviesCellDelegate {
    func didTapButton(with book: Book) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "BookDetailViewController") as? BookDetailViewController {
            detailVC.book = book
            
            // Переход только если экран еще не в стеке
            if navigationController?.topViewController != detailVC {
                navigationController?.pushViewController(detailVC, animated: true)
            }
        }
    }
}
