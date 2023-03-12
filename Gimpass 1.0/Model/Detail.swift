//
//  Detail.swift
//  Gimpass 1.0
//
//  Created by MORI on 2023/3/12.
//

import Foundation

struct Detail: Decodable, Identifiable {
    var id: Int
    var description: [Description]
    var cards: [Cards]
    var lists: Lists
}

struct Description: Decodable, Identifiable  {
    var id: Int
    var point1: String
    var point2: String
    var point3: String
}
struct Cards : Decodable, Identifiable {
    var id: Int
    var name: String
    var feature: Bool
    var image: String
    var content: String
}
struct Lists : Decodable, Identifiable {
    var id: Int
    var fundamentalTheories: [FundamentalTheories]
    var Identification: Identification
    var specialneeds: [Specialneeds]
    var classpractice:[Classpractice]
}
struct FundamentalTheories : Decodable, Identifiable {
    var id: Int
    var name: String
    var theory: String
    var IMG : String
    var description: String
    var content: String
}

struct Identification : Decodable, Identifiable {
    var id: Int
    var theory: String
    var practice: String
    var checklist: String
}
struct Specialneeds : Decodable, Identifiable {
    var description: String
    var id: Int
    var name: String
    var image: String
    var theory: String
    var characteristics: String
    var suggestion: String
}

struct Classpractice : Decodable, Identifiable {
    var id: Int
    var name: String
    var Image: String
    var description: String
    var procedure: [Procedure]
    var suggestion: String
}
struct Procedure : Decodable, Identifiable {
    var id: Int
    var step1: String
    var step2: String
    var step3: String
    var step4: String
}
