//
//  다항식덧셈.swift
//  CodeTestStudy
//
//  Created by 남수김 on 14/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class Node{
    var value: Int
    var level: Int
    var next: Node?
    //    var size = 1
    
    init(value: Int, level: Int) {
        self.value = value
        self.level = level
    }
    
    func next(node: Node) {
        
        if next == nil{
            self.next = node
        }else{
            next?.next(node: node)
        }
        //        self.size += 1
    }
    
    func cycle(){
        print(self.value)
        if next == nil{
            return
        }
        self.next?.cycle()
    }
}

//3x^6 + 7x^3 - 2x^2 - 9
//-2x^6 - 4x^4 + 6x^2 + 6x +1

/*
let root1 = Node(value: 3, level: 6)
root1.next(node: Node(value: 7, level: 3))
root1.next(node: Node(value: -2, level: 2))
root1.next(node: Node(value: -9, level: 0))
root1.cycle()

let root2 = Node(value: -2, level: 6)
root2.next(node: Node(value: -4, level: 4))
root2.next(node: Node(value: 6, level: 2))
root2.next(node: Node(value: 6, level: 1))
root2.next(node: Node(value: 1, level: 0))

var result = [Int:Int]()

func sum(node1: Node){
    let key1 = node1.level
    result[key1] = result[key1] ?? 0 + node1.value
    
    if node1.next == nil{
        return
    }
    sum(node1: node1.next!)
}

sum(node1: root1)
sum(node1: root2)

//print(result)

var array = Array<Int>.init(repeating: 0, count: 7)

func sum2(node: Node){
    
    let index = array.count - node.level - 1
    array[index] += node.value
    
    if node.next == nil {
        return
    }
    
    return sum2(node: node.next!)
}
sum2(node: root1)
sum2(node: root2)
print(array)

var sumResult = ""
for i in 0..<array.count{
    if array[i] == 0 {  // 값이 0이면 출력안함
        continue
    }
    if array[i] == 1{  // 값이 1이면 1표기안함
        sumResult += "x^\(array.count-i-1)"
    }else if i == array.count-1{  // 마지막이면 x표기안함
        sumResult += "\(array[i])"
    }else{
        if array[i] > 0{  // 양수일경우 +붙여주기
            sumResult += "+"
        }
        sumResult += "\(array[i])x^\(array.count-i-1)"
    }
    
    
}
print(sumResult)

 */
