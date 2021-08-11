//
//  AppleMVC_Character.swift
//  Architecture Example
//
//  Created by Fomagran on 2021/06/04.
//

import UIKit

struct AppleMVC_Character {
    
    //화면을 구성할 데이터
    let image:UIImage
    let name:String
    let gender:String
    let country:String
    
    //초기화
    init(name:String,image:UIImage,gender:String,country:String) {
        self.name = name
        self.image = image
        self.gender = gender
        self.country = country
    }
}
