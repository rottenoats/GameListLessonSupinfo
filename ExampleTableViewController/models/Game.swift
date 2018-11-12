//
//  Game.swift
//  ExampleTableViewController
//
//  Created by Kevin Faulhaber on 12/11/2018.
//  Copyright © 2018 Julia. All rights reserved.
//

struct Game: Equatable {
    let title: String
    let year: Int
    
    static func == (lhs: Game, rhs: Game) -> Bool {
        return lhs.title == rhs.title && lhs.year == rhs.year
    }
    
}
