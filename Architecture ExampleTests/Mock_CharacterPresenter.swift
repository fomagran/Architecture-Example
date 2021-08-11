//
//  Mock_CharacterPresenter.swift
//  Mock_CharacterPresenter
//
//  Created by Fomagran on 2021/08/11.
//

import Foundation
@testable import Architecture_Example

class Mock_CharacterPresenter:MVP_CharacterPresenterProtocol {
    var character: MVP_Character?
    
    var index:Int = 3
    
    func incrementIndex() {
        //다음 인덱스로 변경
        if index < 4 {
            index += 1
        }
    }
    
    func decrementIndex() {
        //이전 인덱스로 변경
        if index > 0 {
            index -= 1
        }
    }
}
