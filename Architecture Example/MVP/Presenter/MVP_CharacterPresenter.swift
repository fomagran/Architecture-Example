//
//  MVP_Presenter.swift
//  MVP_Presenter
//
//  Created by Fomagran on 2021/08/11.
//

import Foundation

//전체 모델 데이터
let characters:[MVP_Character] = [
    MVP_Character(name:"스폰지밥",image: #imageLiteral(resourceName: "스폰지밥"), gender: "남자", country:"미국"),
    MVP_Character(name:"뚱이",image: #imageLiteral(resourceName: "뚱이"), gender: "남자", country:"미국"),
    MVP_Character(name:"징징이",image: #imageLiteral(resourceName: "징징이"), gender: "남자", country:"미국"),
    MVP_Character(name:"플랭크톤",image: #imageLiteral(resourceName: "플랑크톤"), gender: "남자", country:"미국"),
    MVP_Character(name:"퐁퐁여사",image: #imageLiteral(resourceName: "퐁퐁부인"), gender: "여자", country:"미국")
]

class MVP_CharacterPresenter:MVP_CharacterPresenterProtocol {
    
    var character: MVP_Character?
    
    var index:Int = 0
    
    func incrementIndex() {
        //이전 인덱스로 변경
        if index > 0 {
            index -= 1
        }
        character = characters[index]
    }
    
    func decrementIndex() {
        //다음 인덱스로 변경
        if index < 4 {
            index += 1
        }
        character = characters[index]
    }
}
