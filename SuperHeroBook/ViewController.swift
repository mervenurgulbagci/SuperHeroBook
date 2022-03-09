//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Bilal BAĞCI on 10.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var superHeroNames = [String]()
    var superHeroImages = [String]()
    var selectedName = ""
    var selectedImage = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
        superHeroNames.append("Usagi")
        superHeroNames.append("Ami")
        superHeroNames.append("Hotaru")
        superHeroNames.append("Makoto")
        superHeroNames.append("Minako")
        superHeroNames.append("Rei")
        
       
        superHeroImages.append("usagi")
        superHeroImages.append("ami")
        superHeroImages.append("hotaru")
        superHeroImages.append("makoto")
        superHeroImages.append("minako")
        superHeroImages.append("rei")
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superHeroNames.remove(at: indexPath.row)
            superHeroImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = superHeroNames[indexPath.row]
        selectedImage = superHeroImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSuperHeroName = selectedName
            destinationVC.selectedSuperHeroImage = selectedImage
            
        }
    }
}

