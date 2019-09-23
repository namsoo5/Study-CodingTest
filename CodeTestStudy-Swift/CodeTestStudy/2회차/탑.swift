//
//  탑.swift
//  CodeTestStudy
//
//  Created by 남수김 on 18/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 탑{
   
    func solution(_ heights:[Int]) -> [Int] {
        var top = Stack()
        var result = [Int]()
        
        for t in heights{   //스텍에 담기
            top.add(element: t)
        }
        
        while true{
            
            if top.size()>0{  // 신호를 보낼 송신탑이 남아있다면실행
                let cur = top.remove()   // 뒤에있는 송신탑부터 제거
                let value = signal(t: top, cur: cur)
                result.insert(value, at: 0)
            }else{
                break
            }
            
        }
//        print(result)
        return result
    }
    
    func signal(t: Stack, cur: Int) -> Int{
        
        for i in stride(from: t.size()-1, through: 0, by: -1){  //cur송신탑기준으로 왼쪽으로가면서
                                                                //자신보다 큰 탑이있는지확인
            let value = t.value(index: i)
            if cur < value{
                
                return i+1     //해당 인덱스 반환
            }
            
        }
        return 0
    }
    
    
}

struct Stack: QueStack {
    var save = [Int]()
    
    mutating func add(element: Int) {
        self.save.append(element)
    }
    
    mutating func remove() -> Int {
        return self.save.removeLast()
    }
    
    func first() -> Int {
        return save[save.count-1]
    }
    
    func size() -> Int {
        return self.save.count
    }
    
    func value(index: Int) -> Int{
        return self.save[index]
    }
    
}

