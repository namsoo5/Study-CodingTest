//
//  헥데이3.swift
//  CodeTestStudy
//
//  Created by 남수김 on 2019/10/12.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 헥데이3{
    
    func solution(_ maps:[String]) -> [Int] {
        
        var hash = [String:[String]]()
        
        for row in maps{
            print(row)
            var before = "."
            for s in row{  //좌우 공유확인
                let key = String(s)
                
                if before == "." || key == before || key == "."{
                    before = String(s)
                    continue
                }
                
                 
                
                before = String(s)
            }
        }
        
        print(hash)
        
        
        return []
    }
}

func solution2(_ maps:[String]) -> [Int] {
    
    var relation = [Character: [Character]]()
    let maps = maps.map { $0.map { $0 as Character} }
    
    for y in maps.indices {
        for x in maps[0].indices {
            if maps[y][x] == "." { continue }
            let adjacents = confirm(maps: maps, x: x, y: y)
            relation[maps[y][x]] = Set((relation[maps[y][x]] ?? []) + adjacents).map { $0 }
        }
    }
    let paths = relation.reduce(0) { $0 + $1.value.count }
    let max = relation.reduce(0) { max, new in
        max < new.value.count ? new.value.count : max
    }
    return [paths/2, max]
}

func confirm (maps: [[Character]], x: Int, y: Int) -> [Character] {
    var answer: [Character] = []
    
    let height = maps.count
    let width = maps[0].count
    
    let contry = maps[y][x]
    let none: Character = "."
    
    typealias coordinate = (x: Int, y: Int)
    
    let operation = [(x:-1, y:0),
                     (x:0, y:-1),
                     (x:1, y:0),
                     (x:0, y:1)]
    
    let adjacents = operation
        .map { (x: x+$0.x, y: y+$0.y) }
        .filter { ($0.x >= 0 && $0.x < width && $0.y >= 0  && $0.y < height) }
    
    for adjacent in adjacents {
        
        let current = maps[adjacent.y][adjacent.x]
        switch (current) {
        case none:
            ()
        case contry:
            ()
        default:
            answer.append(current)
        }
    }
    return answer
}

//print(solution2( ["……….",
//            "AAACC…..",
//            ".AAA…..Z",
//            "..AAAA..C.",
//            "…BBBBB..",
//            "….BBB…",
//            "…ZBBB…",
//            "ZZZZAAAC..",
//            "…..CCCC.",
//            "QQ……C.",
//            "………."]))
//           ".B.C.D."])
