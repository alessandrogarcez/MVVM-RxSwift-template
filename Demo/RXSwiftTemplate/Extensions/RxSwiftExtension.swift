//
//  RxSwiftExtension.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 18/08/18.
//  Copyright © 2018 Alessandro Garcez. All rights reserved.
//

import Foundation
import RxSwift

func << (left: DisposeBag, right: Disposable) {
    right.disposed(by: left)
}

func << (left: DisposeBag, right: [Disposable]) {
    right.forEach { $0.disposed(by: left) }
}

extension PublishSubject where Element == Void {
    func notify() {
        onNext(())
    }
}
