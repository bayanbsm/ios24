//
//  ViewController.swift
//  HeroApp
//
//  Created by Arman Myrzakanurov on 20.11.2024.
//

import UIKit
import Alamofire
import Kingfisher

struct Hero: Decodable {
    let name: String //done
    let images: HeroImage
    let biography: Biography
    let powerstats: powerStats
    
    struct Biography: Decodable {
        let fullName: String
        let alterEgos: String
    }
    
    struct HeroImage: Decodable {
        let sm: String //done
    }
    
    struct powerStats: Decodable {
        let intelligence: Int
        let strength: Int
        let speed: Int
        let durability: Int
        let power: Int
        let combat: Int
    }
}

class ViewController: UIViewController {

    @IBOutlet private weak var heroName: UILabel!
    @IBOutlet  weak var heroAlterEgo: UILabel!
    @IBOutlet  weak var heroFullName: UILabel!
    @IBOutlet  weak var heroIntelligence: UILabel!
    @IBOutlet  weak var heroStrength: UILabel!
    @IBOutlet  weak var heroSpeed: UILabel!
    @IBOutlet  weak var heroDurability: UILabel!
    @IBOutlet  weak var heroPower: UILabel!
    @IBOutlet  weak var heroCombat: UILabel!
    @IBOutlet private weak var heroImage: UIImageView!

    private let api = "https://akabab.github.io/superhero-api/api/all.json"
    private var heroes: [Hero] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func didTapHero(_ sender: Any) {
        /// Async/Await Example Code
//        Task {
//            await fetchHeroAsync()
//            let randomHero = heroes.randomElement()!
//            configure(hero: randomHero)
//        }

        /// Basic Closures via Alamofire
        if heroes.isEmpty {
            fetchHero()
        } else {
            let randomHero = heroes.randomElement()!
            configure(hero: randomHero)
        }
    }

    /// Async/Await Example Code
    private func fetchHeroAsync() async {
        let result = await AF.request(api).serializingDecodable([Hero].self).result
        switch result {
        case .success(let heroes):
            self.heroes = heroes
        case .failure(let error):
            print(error)
        }
    }

    /// Basic Closures via Alamofire
    private func fetchHero() {
        AF.request(api).responseDecodable(of: [Hero].self) { response in
            switch response.result {
            case .success(let heroes):
                self.heroes = heroes
            case .failure(let error):
                print(error)
            }
        }
    }

    private func configure(hero: Hero) {
        self.heroName.text = hero.name
        self.heroFullName.text = hero.biography.fullName
        self.heroAlterEgo.text = hero.biography.alterEgos
        self.heroIntelligence.text = "Intelligence: \(hero.powerstats.intelligence)"
        self.heroStrength.text = "Stregth: \(hero.powerstats.strength)"
        self.heroSpeed.text = "Speed: \(hero.powerstats.speed)"
        self.heroDurability.text = "Durability: \(hero.powerstats.durability)"
        self.heroPower.text = "Power: \(hero.powerstats.power)"
        self.heroCombat.text = "Power: \(hero.powerstats.combat)"
        heroImage.kf.setImage(with: URL(string: hero.images.sm))
    }
}
