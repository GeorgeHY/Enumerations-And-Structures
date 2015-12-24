//
//  main.swift
//  EnumerationsAndStructures
//
//  Created by GE on 15/12/18.
//  Copyright © 2015年 GE. All rights reserved.
//

import Foundation

enum Rank: Int
{
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String
    {
        switch self{
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
            
        }
    }
    
    
}
//let ace = Rank.Ace
//let aceRawValue = ace.rawValue
//
//print(ace)
//print(aceRawValue)
//
//func compareRank(rank1:Rank,rank2:Rank) -> String
//{
//    let ace1RV = rank1.rawValue
//    let ace2RV = rank2.rawValue
//    
//    if ace1RV > ace2RV
//    {
//        return rank1.simpleDescription()
//    }else{
//        return rank2.simpleDescription()
//    }
//    
//    
//}
//
//print(compareRank(Rank.Jack, rank2: Rank.Queen))

//if let convertedRank = Rank(rawValue: 3)
//{
//    let threeDescription = convertedRank.simpleDescription() 
//    print(threeDescription)
//}


enum Suit
{
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String
    {
        switch self
        {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> String
    {
        switch self
        {
        case .Spades:
            return "black"
        case .Hearts:
            return "red"
        case .Diamonds:
            return "red"
        case .Clubs:
            return "black"
        }
    }
}
//let hearts = Suit.Hearts
//let heartsDescription = hearts.simpleDescription()
//let heartsColor = hearts.color()
//
//
//print(heartsDescription)
//print(heartsColor)

//使用struct来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。它们之间最大的一个区别就是结构体是传值，类是传引用。
struct Card
{
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String
    {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription =  threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)

enum ServerResponse
{
    case Result(String, String)
    case Get(Int)
    case Error(String)
}

//let success = ServerResponse.Result("6:00 am", "8:09 pm")
let success = ServerResponse.Get(2)
let failure = ServerResponse.Error("Out of cheese.")

switch success
{
    case let .Result(sunrise, sunset):
        let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
        print(serverResponse)
    case let .Error(error):
        let serverResponse = "Failure... \(error)"
        print(serverResponse)
    case  .Get(2):
        let serverResponse = "返回2"
        print(serverResponse)
    default :
        print("默认")
}

print(failure)




