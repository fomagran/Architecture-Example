//
//  Observable.swift
//  Architecture Example
//
//  Created by Fomagran on 2021/10/19.
//

import Foundation

class Observable<T> {
  typealias Listener = (T) -> Void
  var listener: Listener?
  var value: T {
    didSet {
      listener?(value)
    }
  }
  init(_ value: T) {
    self.value = value
  }
  func bind(listener: Listener?) {
    self.listener = listener
    listener?(value)
  }
}
