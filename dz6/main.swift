//
//  main.swift
//  dz6
//
//  Created by Jarae on 7/12/22.
//

import Foundation
//task1
print("1")
print("Enter your words")
let size: Int = 4
var stringArray = [String]()

for _ in 1...size{
    let string: String = readLine()!
    stringArray.append(string)
}
print(stringArray)

//нахождение max и min элементов
var max: Int = 0
var min: Int = stringArray[0].count
for element in stringArray{
    let count = element.count
    if count > max{
        max = count
    }
    if count < min{
        min = count
    }
}
//отобразить самое длинное слово(если несколько с таким количеством - отобразить все)
print("Element(s) with max length(\(max)): ")
for element in stringArray{
    let count = element.count
    if count == max{
        print(element)
    }
}
//отобразить самое короткое слово(если несколько с таким количеством - отобразить все)
print("Element(s) with min length(\(min)): ")
for element in stringArray{
    let count = element.count
    if count == min{
        print(element)
    }
}

//task2
print("\n2")
let students: [String : String] = ["Kofi" : "+091", "Abena" : "+091", "Peter" : "+091", "Kweku" : "+091", "Akosua" : "+091", "Tori" : "+091", "Cat" : "+091", "John" : "+091", "Jonny" : "+091", "Sehun" : "+091","Jennie" : "+091", "Lisa" : "+091", "Rose" : "+091", "Jisoo" : "+091", "Amy" : "+091","Gloria" : "+091", "Anna" : "+091", "Penny" : "+091", "Leonard" : "+091", "Howard" : "+091"]
print(students)
let sortedStudents = Array(students.keys).sorted()
print(sortedStudents)

var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
for letter in alphabet{
    var count: Int = 0

    for (key, _) in students{
        if key.lowercased().hasPrefix(letter){
            count += 1
            print(key)
        }
    }
    if count != 0{
        print("Elements start with letter", letter, ":", count)
    }
}
//task3
print("\n3")
var questions: [[String]] = [["q1","a1"],["q2","a2"],["q3","a3"],["q4","a4"],["q5","a5"],["q6","a6"],["q7","a7"],["q8","a8"],["q9","a9"],["q10","a10"],["q11","a11"],["q12","a12"],["q13","a13"],["q14","a14"],["q15","a15"]]
//print(questions)
var prize: Int = 0
var flag: Bool = true
for round in 1...5{
    print("ROUND \(round)")
    
    for question in 1...3{
        let num = ((round - 1) * 3) + question
        
        print("question \(num):", terminator:" ")
        print(questions[num - 1][0])
        
        print("your answer is:", terminator:" ")
        let answer: String = readLine()!
        
        if answer == questions[num - 1][1]{
            print("correct")
            prize += 100 * round
            print("your prize = \(prize)$\n")
        }else{
            print("WRONG! answer was:", questions[num - 1][1])
            print("you've passed \(round - 1) round")
            print("your total prize = \(prize)$")
            flag = false
            break;
        }
    }
    if flag == false{
        break
    }
    print("Congratulations! you passed \(round) round\n")
}
