//
//  Operators.swift
//  RelizKit
//
//  Created by Александр Сенин on 17.10.2020.
//

//MARK: - RSViewBuilderKit
precedencegroup SecondTernaryPrecedence {
    associativity: right
}
precedencegroup FirstTernaryPrecedence {
    associativity: left
    higherThan: SecondTernaryPrecedence
}

postfix operator +>
postfix operator *
postfix operator |*

infix operator <>
infix operator ><

infix operator ?> : SecondTernaryPrecedence
infix operator <| : FirstTernaryPrecedence

//MARK: - RSDarkModeKit
infix operator <-
