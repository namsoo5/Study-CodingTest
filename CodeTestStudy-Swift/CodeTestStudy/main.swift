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

다음큰숫자().solution(78)
