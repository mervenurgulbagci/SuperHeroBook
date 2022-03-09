//
//  DetailsViewController.swift
//  SuperHeroBook
//
//  Created by Bilal BAĞCI on 14.02.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var selectedSuperHeroName = ""
    var selectedSuperHeroImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: selectedSuperHeroImage)
        label.text = selectedSuperHeroName
    }
    



}
