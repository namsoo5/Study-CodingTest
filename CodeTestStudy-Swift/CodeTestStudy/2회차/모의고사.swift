//
//  모의고사.swift
//  CodeTestStudy
//
//  Created by 남수김 on 06/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 모의고사{
    let one = [1,2,3,4,5]
    let two = [2,1,2,3,2,4,2,5]
    let three = [3,3,1,1,2,2,4,4,5,5]
    
    var result = [Int:Int]()
    var max = 0
    var maxArray = [Int]()
    
    func solution(_ answers:[Int]) -> [Int] {
        let 수포자: [[Int]] = [one, two, three]
        
        var index = 1
        for one in 수포자{  // 수포자와 답안지 비교
            let count = collect(answer: answers, 수포자: one)
            result[index] = count
            index += 1
        }
        
//        let array = result.sorted{ (one, two) -> Bool in
//            if one.value < two.value {
//                return false
//            }else if one.value == two.value {
//                if one.key < two.key {
//                    return true
//                }else{
//                    return false
//                }
//            }else{
//                return true
//            }
//
//        }
        
        for one in result{  //최고점과 같은 수포자들 고르기
            if one.value == max {
                maxArray.append(one.key)
            }
        }
        maxArray.sort()  //정렬
//        print(maxArray)
        
        
        
        return maxArray
    }
    
    func collect(answer: [Int], 수포자: [Int]) -> Int{
        let 수포자정답수 = 수포자.count
        var count = 0
        for i in 0..<answer.count {  //정답과 수포자답패턴 비교해서 맞은갯수 카운팅
            if answer[i] == 수포자[i % 수포자정답수] {
                count += 1
            }
            
        }
        if max < count {  //최고점 기록
            max = count
        }
        return count
    }
    
    
}
