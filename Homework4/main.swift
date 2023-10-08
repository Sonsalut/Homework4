//
//  main.swift
//  Homework4
//
//  Created by Le Thanh Son on 07/10/2023.
//

import Foundation

//Bài 1
print("Bài 1: Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.")
func findOddEven (numbers: [Int]) -> (Int, Int) {
    var firstOdd = -1
    var lastEven = -1
    for (index, number) in numbers.enumerated() {
        if number % 2 == 1 && firstOdd == -1 {
            firstOdd = index
        }
        if number % 2 == 0 {
            lastEven = index
        }
    }
    
    return (firstOdd, lastEven)
}
let ar: [Int] = [2, 4, 6, 8]
let (firstOdd, lastEven) = findOddEven(numbers: ar)
if (firstOdd, lastEven) == (-1, -1) {
    print("mảng đã cho là mảng rỗng")
} else if (firstOdd, lastEven) == (-1, lastEven) {
    print("mảng đã cho không có số lẻ, vị trí của số chẵn cuối cùng là \(lastEven)")
} else if (firstOdd, lastEven) == (firstOdd, -1) {
    print("vị trí của số lẻ đầu tiên là \(firstOdd), mảng đã cho không có số chẵn")
} else {
    print("vị trí của số lẻ đầu tiên là \(firstOdd), vị trí của số chẵn cuối cùng là \(lastEven)")
}


//Bài 2
print("Bài 2: Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.")
