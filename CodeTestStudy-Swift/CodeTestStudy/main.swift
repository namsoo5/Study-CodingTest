//
//  main.swift
//  CodeTestStudy
//
//  Created by 남수김 on 30/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

let s1 = "AB"
let s2 = "z"
let s3 = "a B z"

let n1 = 1
let n2 = 1
let n3 = 4


//65~90 대문자
//97~122 소문자
func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    for a in s.utf16 {
        if a == 32 {
            result.append(String(UnicodeScalar(a)!))
            continue
        }
        var num = 0
        if a < 91 {
             num = Int(a)+n
            if num > 90 {
                num = 64 + (num - 90)
            }
        }else{
             num = Int(a)+n
            if num>122 {
                num = 96 + (num - 122)
            }
        }
        result.append(String(UnicodeScalar(num)!))

    }
    
    return result
}

//let a = solution(s3, n3)

//watermelon().solution(3)

//핸드폰번호가리기().solution("027778888")
//print(핸드폰번호가리기().solution2("01012345678"))

//예산().solution([2,2,3,3], 10)

//소수찾기().solution("123")

//다음큰숫자().solution(78)

//숫자야구().solution([[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]])

//모의고사().solution([1,3,2,4,2])

//체육복().solution(3, [2,3], [1,2])

//K번째수().solution([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]])

//년2016().solution(5, 24)

//가운데글자().solution("abcde")
//가운데글자().solution("qwer")

//나누어떨어지는숫자배열().solution([5,9,7,10], 5)
//나누어떨어지는숫자배열().solution([2,36,1,3], 1)
//나누어떨어지는숫자배열().solution([3,2,6], 10)

//쇠막대기().solution("()(((()())(())()))(())")

//프린터().solution([2,1,3,2], 2)
//프린터().solution([1,1,9,1,1,1], 0)
//프린터().solution([1,2,2,3,3,4], 0)

//기능개발().solution([93,30,55], [1,30,5])
//기능개발().solution([93,30,55], [5,30,5])

//다리를지나는트럭().solution(2, 10, [7,4,5,6])
//다리를지나는트럭().solution(100, 100, [10])
//다리를지나는트럭().solution(100, 100, [10,10,10,10,10,10,10,10,10,10])

//탑().solution([6,9,5,7,4])
//탑().solution([3,9,9,3,5,7,2])
//탑().solution([1,5,3,6,7,6,5])

protocol QueStack {
    associatedtype T;
    var save: [T] { get set }
    
    mutating func add(element: T)
    
    mutating func first() -> T
    
    func size()->Int
}

//스킬트리().solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"])

네이버문제1().solution(["d@co@m.com","a@abc.com","b@def.com","c@ghi.net"])
네이버문제1().solution(["abc.def@x.com","abc","abc@defx","abc@defx.xyz"])
