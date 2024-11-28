//
//  ViewController.swift
//  HeroRandomizer
//
//
//

import UIKit

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

    @IBOutlet  weak var heroImage: UIImageView!
    @IBOutlet  weak var heroName: UILabel!
    @IBOutlet  weak var heroAlterEgo: UILabel!
    @IBOutlet  weak var heroFullName: UILabel!
    @IBOutlet  weak var heroIntelligence: UILabel!
    @IBOutlet  weak var heroStrength: UILabel!
    @IBOutlet  weak var heroSpeed: UILabel!
    @IBOutlet  weak var heroDurability: UILabel!
    @IBOutlet  weak var heroPower: UILabel!
    @IBOutlet  weak var heroCombat: UILabel!

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heroRollDidTap(_ sender: UIButton) {
        let randomId = Int.random(in: 1...563)
        fetchHero(by: randomId)
    }

    private func fetchHero(by id: Int) {
        let urlString = "https://akabab.github.io/superhero-api/api/id/\(id).json"
        guard let url = URL(string: urlString) else { return }
        let urlRequest = URLRequest(url: url)

        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard self.handleErrorIfNeeded(error: error) == false else {
                return
            }

            guard let data else { return }
            if let jsonString = String(data: data, encoding: .utf8) {
                        print("Received JSON: \(jsonString)")
                    }
            self.handleHeroData(data: data)
        }.resume()
    }

    private func handleHeroData(data: Data) {
        do {
            let hero = try JSONDecoder().decode(Hero.self, from: data)
            let heroImage = self.getImageFromUrl(string: hero.images.sm)

            DispatchQueue.main.async {
                self.heroName.text = hero.name
                self.heroFullName.text = hero.biography.fullName
                self.heroAlterEgo.text = hero.biography.alterEgos
                self.heroImage.image = heroImage
                self.heroIntelligence.text = "Intelligence: \(hero.powerstats.intelligence)"
                self.heroStrength.text = "Stregth: \(hero.powerstats.strength)"
                self.heroSpeed.text = "Speed: \(hero.powerstats.speed)"
                self.heroDurability.text = "Durability: \(hero.powerstats.durability)"
                self.heroPower.text = "Power: \(hero.powerstats.power)"
                self.heroCombat.text = "Power: \(hero.powerstats.combat)"
                UIView.transition(with: self.heroImage, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroImage.image = heroImage
                    })

                    UIView.transition(with: self.heroName, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroName.text = hero.name
                    })

                    UIView.transition(with: self.heroFullName, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroFullName.text = hero.biography.fullName
                    })

                    UIView.transition(with: self.heroAlterEgo, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroAlterEgo.text = hero.biography.alterEgos
                    })

                    UIView.transition(with: self.heroIntelligence, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroIntelligence.text = "Intelligence: \(hero.powerstats.intelligence)"
                    })

                    UIView.transition(with: self.heroStrength, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroStrength.text = "Strength: \(hero.powerstats.strength)"
                    })

                    UIView.transition(with: self.heroSpeed, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroSpeed.text = "Speed: \(hero.powerstats.speed)"
                    })

                    UIView.transition(with: self.heroDurability, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroDurability.text = "Durability: \(hero.powerstats.durability)"
                    })

                    UIView.transition(with: self.heroPower, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroPower.text = "Power: \(hero.powerstats.power)"
                    })

                    UIView.transition(with: self.heroCombat, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self.heroCombat.text = "Combat: \(hero.powerstats.combat)"
                    })

            }
        } catch {
            DispatchQueue.main.async {
                self.heroName.text = error.localizedDescription + "\nReRoll again!"
                self.heroFullName.text = ""
                self.heroAlterEgo.text = ""
                self.heroIntelligence.text = ""
                self.heroStrength.text = ""
                self.heroSpeed.text = ""
                self.heroDurability.text = ""
                self.heroPower.text = ""
                self.heroCombat.text = ""
                self.heroImage.image = nil
            }
        }
    }

    private func getImageFromUrl(string: String) -> UIImage? {
        guard
            let heroImageURL = URL(string: string),
            let imageData = try? Data(contentsOf: heroImageURL)
        else {
            return nil
        }
        return UIImage(data: imageData)
    }

    private func handleErrorIfNeeded(error: Error?) -> Bool {
        guard let error else {
            return false
        }
        print(error.localizedDescription)
        return true
    }
}
