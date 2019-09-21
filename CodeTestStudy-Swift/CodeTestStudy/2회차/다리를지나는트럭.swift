//
//  다리를지나는트럭.swift
//  CodeTestStudy
//
//  Created by 남수김 on 17/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 다리를지나는트럭 {
    
    var truck = Queue3()
    var weightSum = 0
    
    func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
        var second = 0
        var bridge = [Int]()
        var temp = truck_weights
        
        for t in truck_weights{
            truck.add(element: t)
        }
        
        while true{
            second += 1
            if temp.isEmpty{
                break
            }
            if truck.size() > 0{  // 대기중인 트럭이잇다면
                let element = truck.first()   //첫번째 큐에서꺼냄
                
                if weightSum + element <= weight {  //다리 용량 확인
                    
                    truck.remove()   //대기중인 큐에서 삭제
                    weightSum += element
                    
                    bridge.append(bridge_length)  // 다리를 지나고있는 트럭
                }
            }
//            print("--------")
            for i in 0..<bridge.count{  //다리에있는트럭 1씩 이동
//                print(bridge)
                bridge[i] -= 1
                
            }
            if bridge[0] == 0 {  //다이동하면
                bridge.removeFirst()  //다리에있는 트럭제거
                weightSum -= temp.removeFirst()  //용량도 제거
            }
        }
        
        print(second)
        
        return second
    }
    
}



struct Queue3{
    
    var save = [Int]()
    
    mutating func add(element: Int){
        self.save.append(element)
    }
    
    mutating func remove(){
        self.save.removeFirst()
    }
    
    mutating func first() -> Int{
       return save[0]
    }
    
    func size()->Int{
        return self.save.count
    }
}

