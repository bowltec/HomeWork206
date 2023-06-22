//
//  InfoViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 19.06.2023.
//

import UIKit

final class InfoViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var myPhoto: UIImageView! {
        didSet {
            myPhoto.layer.cornerRadius = myPhoto.frame.height / 2
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    
    var user: User!
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel(
            nameLabel,
            surnameLabel,
            companyLabel,
            departmentLabel,
            postLabel
        )
        myPhoto.image = UIImage(named: user.person.photo)
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.job.title
        departmentLabel.text = user.person.job.department.rawValue
        postLabel.text = user.person.post
        view.setupGradientBackground()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
    
    // MARK: - Private methods
    private func setupLabel(_ labels: UILabel...) {
        labels.forEach { label in
            label.textColor = .white
            label.font = UIFont.boldSystemFont(ofSize: 16)
        }
    }
}
