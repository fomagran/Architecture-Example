//
//  MVP_PresenterProtocol.swift
//  MVP_PresenterProtocol
//
//  Created by Fomagran on 2021/08/11.
//

import Foundation

protocol MVP_CharacterPresenterProtocol {
    var character:MVP_Character? { get set }
    var index:Int { get set }
    func decrementIndex()
    func incrementIndex()
}
