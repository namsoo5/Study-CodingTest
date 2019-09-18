//
//  기능개발.swift
//  CodeTestStudy
//
//  Created by 남수김 on 13/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 기능개발{
    func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        
        var result = [Int]()
        var speedTemp = speeds
        var jobs = Queue2()
        
        for p in progresses{
            jobs.add(element: p)
        }
        
        while(true){
            var sum = 0
            jobs.process(speed: speedTemp)
            
            //작업갯수만큼 확인
            for _ in 0..<jobs.size(){
                // 앞의 작업이 끝나지않으면 반환불가
                if !jobs.finish(){
                    break
                }else{  //앞작업이 끝나면 진행률배열에도 하나제거해주기
                    speedTemp.removeFirst()
                    sum += 1
                }
            }
            // 반환된것 잇을때만 배열에 추가
            if sum>0{
                result.append(sum)
            }
            if jobs.size() == 0{
                break
            }
        }
//        print(result)
        return result
    }
}

struct Queue2{
    private var save = [Int]()
    init() {}
    
    mutating func add(element: Int){
        self.save.append(element)
    }
    
    mutating func remove()->Int{
        let element = self.save.removeFirst()
        return element
    }
    
    // 모든요소 진행률에맞게 더하기
    mutating func process(speed: [Int]) {
        
        for i in 0..<save.count{
            self.save[i] += speed[i]
        }
    }
    
    // 100%완료되면 삭제
    mutating func finish() -> Bool{
        if self.save[0] > 99{
            self.save.removeFirst()
            return true
        }else{
            return false
        }
    }
    
    mutating func size() -> Int {
        return self.save.count
    }
}
