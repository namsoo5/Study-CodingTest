//
//  프린터.swift
//  CodeTestStudy
//
//  Created by 남수김 on 13/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 프린터{
    var result = Queue<Int>()
    var temp = Queue<Int>()
    
    func solution(_ priorities:[Int], _ location:Int) -> Int {
        
        for e in priorities{
            temp.add(element: e)
        }
        
        temp.location = location
        
        while (temp.size() != 0){
            
            let e = temp.cyclePop()    //차례대로 순환
            if temp.getMax() == e{    //최대값인경우
                result.add(element: e)    //결과큐에 삽입
                if temp.remove(){    //삽입하고 샘플큐에서 삭제하기 (true -> 보고싶은 로테이션일시)
                    result.location = result.size()    //현재인덱스 저장
                }
            }
        }
        print(result)
//        print(result.location)
        return result.location
    }
    
}



struct Queue<T: BinaryInteger> {
    
    private var save = [T]()
    public init (){}
    var max = 0
    var location = 0
    
    mutating func add(element: T){
        self.save.append(element)
        
    }
    
    mutating func cyclePop()->T{
        //순환
        let first = save.remove(at: 0)
        self.save.append(first)
        
        //location도 같이 순환
        location -= 1
        
        if location < 0 {
            location = save.count-1
        }
        
//        print("locate: \(location)")
        return first
    }
    
    mutating func remove()->Bool{
       //삭제시 보고싶은 로테이션이면 true반환
        if location == save.count-1{
            save.removeLast()
            self.location = 99999999   //1번만 실행되도록
            return true
        }else{
            save.removeLast()
            return false
        }
    }
    
    mutating func getMax()->Int{
        self.max = self.save.max() as! Int
        return max
    }
    
    func size()->Int{
        return save.count
    }
}
