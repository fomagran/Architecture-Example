//
//  ViewController.swift
//  Architecture Example
//
//  Created by Fomagran on 2021/06/04.
//

import UIKit

class AppleMVC_CharacterViewController: UIViewController {
    
    //전체 모델 데이터
    let characters:[AppleMVC_Character] = [
        AppleMVC_Character(name:"스폰지밥",image: #imageLiteral(resourceName: "스폰지밥"), gender: "남자", country:"미국"),
        AppleMVC_Character(name:"뚱이",image: #imageLiteral(resourceName: "뚱이"), gender: "남자", country:"미국"),
        AppleMVC_Character(name:"징징이",image: #imageLiteral(resourceName: "징징이"), gender: "남자", country:"미국"),
        AppleMVC_Character(name:"플랭크톤",image: #imageLiteral(resourceName: "플랑크톤"), gender: "남자", country:"미국"),
        AppleMVC_Character(name:"퐁퐁여사",image: #imageLiteral(resourceName: "퐁퐁부인"), gender: "여자", country:"미국")
    ]
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    
    //MARK:- Properties
    
    //현재 인덱스
    private var index:Int = 0
    
    //현재 모델 데이터
    private var character:AppleMVC_Character!
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK:- Helpers
    
    //초기화
    private func configure() {
        character = characters[index]
        updateView()
    }
    
    //뷰 업데이트
    private func updateView() {
        
        //새로운 모델
        let newCharacter = characters[index]
        
        //새로운 모델에 맞게 뷰 변경
        self.image.image = newCharacter.image
        self.name.text = newCharacter.name
        self.gender.text = newCharacter.gender
        self.country.text = newCharacter.country
    }
    
    //MARK:- IBActions
    
    //이전 버튼을 눌렀다면
    @IBAction func tapPreviousButton(_ sender: Any) {
        //이전 인덱스로 변경
        if index > 0 {
            index -= 1
        }
        //뷰 업데이트
        updateView()
    }
    
    //다음 버튼을 눌렀다면
    @IBAction func tapNextButton(_ sender: Any) {
        //다음 인덱스로 변경
        if index < 4 {
            index += 1
        }
        //뷰 업데이트
        updateView()
    }
}

