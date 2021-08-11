//
//  CharacterView.swift
//  Test
//
//  Created by Fomagran on 2021/06/03.
//

import UIKit

class MVC_CharacterView: UIView {

    //화면을 구성하고 있는 요소들
    @IBOutlet weak var image:UIImageView! //이미지
    @IBOutlet weak var gender:UILabel! //성별
    @IBOutlet weak var name:UILabel! //이름
    @IBOutlet weak var country:UILabel! //국가
    @IBOutlet weak var nextButton:UIButton! //다음 버튼
    @IBOutlet weak var previousButton:UIButton! //이전 버튼
    
    //컨트롤러로부터 받은 캐릭터로 업데이트 함.
    func updateView(character:MVC_Character) {
        self.image.image = character.image
        self.gender.text = character.gender
        self.name.text = character.name
        self.country.text = character.country
    }
    
}
