//
//  CharacterViewModel.swift
//  Architecture Example
//
//  Created by Fomagran on 2021/10/19.
//

import UIKit

class CharacterViewModel {
    
    //전체 모델 데이터
    let characters:[MVVM_Character] = [
        MVVM_Character(name:"스폰지밥",image: #imageLiteral(resourceName: "스폰지밥"), gender: "남자", country:"미국"),
        MVVM_Character(name:"뚱이",image: #imageLiteral(resourceName: "뚱이"), gender: "남자", country:"미국"),
        MVVM_Character(name:"징징이",image: #imageLiteral(resourceName: "징징이"), gender: "남자", country:"미국"),
        MVVM_Character(name:"플랭크톤",image: #imageLiteral(resourceName: "플랑크톤"), gender: "남자", country:"미국"),
        MVVM_Character(name:"퐁퐁여사",image: #imageLiteral(resourceName: "퐁퐁부인"), gender: "여자", country:"미국")
    ]
    
    //MARK:- Properties
    
    let image:Observable<UIImage?> = Observable(nil)
    let name:Observable<String?> = Observable(nil)
    let gender:Observable<String?> = Observable(nil)
    let country:Observable<String?> = Observable(nil)
    var index:Int = 0
    
    init() {
        self.image.value = characters[0].image
        self.name.value = characters[0].name
        self.gender.value = characters[0].gender
        self.country.value = characters[0].country
    }
    
    func tapButton(isPrevious:Bool) {
        if isPrevious {
            index = index > 0 ? index-1 : 0
        }else {
            index = index < characters.count - 1 ? index + 1 : characters.count - 1
        }
        self.image.value = characters[index].image
        self.name.value = characters[index].name
        self.gender.value = characters[index].gender
        self.country.value = characters[index].country
    }
}
