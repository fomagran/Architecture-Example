//
//  MVP_ViewController.swift
//  MVP_ViewController
//
//  Created by Fomagran on 2021/08/11.
//

import UIKit

class MVP_CharacterViewController: UIViewController {
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    
    //MARK:- Properties
    
    let presenter:MVP_CharacterPresenterProtocol = MVP_CharacterPresenter()
    
    //뷰 업데이트
    private func updateView() {
        //새로운 모델에 맞게 뷰 변경
        self.image.image = presenter.character?.image
        self.name.text = presenter.character?.name
        self.gender.text = presenter.character?.gender
        self.country.text = presenter.character?.country
    }
    
    @IBAction func tapPreviousButton(_ sender: Any) {
        presenter.decrementIndex()
        updateView()
    }
    
    @IBAction func tapNextButton(_ sender: Any) {
        presenter.incrementIndex()
        updateView()
    }
}
