//
//  Detail.swift
//  Gimpass 1.0
//
//  Created by MORI on 2023/3/12.
//

import Foundation
struct Detail: Decodable, Identifiable {
    var description: [description]
    var cardView: cardView
    var detailView: detailView
}

struct description: Decodable, Identifiable  {
    var point1: String
    var point2: String
    var point3: String
}
struct cardView : Decodable, Identifiable {
    var name: String
    var feature: Bool
    var id: Int
    var image: String
    var content: String
}
struct detailView : Decodable, Identifiable {
    var fundamentalTheories: [fundamentalTheories]
    var Identification: [Identification]
    var specialneeds: [specialneeds]
    var classpractice:[classpractice]
}
struct fundamentalTheories : Decodable, Identifiable {
    var id: Int
    var name: String
    var theory: String
    var IMG : String
    var description: String
    var content: String
}

struct Identification : Decodable, Identifiable {
    var theory: String
    var practice: String
    var checklist: String
}
struct specialneeds : Decodable, Identifiable {
    var description: String
    var id: Int
    var name: String
    var image: String
    var theory: String
    var characteristics: String
    var suggestion: String
}

struct classpractice : Decodable, Identifiable {
    var id: Int
    var name: String
    var Image: String
    var description: String
    var procedure: [procedure]
    var suggestion: String
}
struct procedure : Decodable, Identifiable {
    var step1: String
    var step2: String
    var step3: String
    var step4: String
}
