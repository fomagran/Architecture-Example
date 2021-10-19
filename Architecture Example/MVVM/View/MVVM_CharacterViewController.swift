//
//  MVVM_CharacterViewController.swift
//  Architecture Example
//
//  Created by Fomagran on 2021/10/19.
//

import UIKit

class MVVM_CharacterViewController: UIViewController {
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    
    //MARK:- Properties
    
    private let viewModel:CharacterViewModel = CharacterViewModel()
    
    //MARK:- Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    //MARK:- Functions
    
    func bind() {
        viewModel.image.bind { [weak self] image in
            self?.image.image = image
        }
        
        viewModel.name.bind { [weak self] name in
            self?.name.text = name
        }
        
        viewModel.gender.bind { [weak self] gender in
            self?.gender.text = gender
        }
        
        viewModel.country.bind { [weak self] country in
            self?.country.text = country
        }
    }
    
    //MARK:- IBActions
    
    @IBAction func tapPreviousButton(_ sender: Any) {
        viewModel.tapButton(isPrevious: true)
    }
    
    @IBAction func tapNextButton(_ sender: Any) {
        viewModel.tapButton(isPrevious: false)
    }
}
