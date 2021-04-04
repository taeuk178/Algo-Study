import Cocoa

/* *
 
 Closure
 
 
 */


// closure 축약
let intArr = [1,2,3]

// map을 이용하여 int타입의 배열을 string타입의 배열로 바꾸기
let stringArr = intArr.map({ (s1: Int) -> String in
   return "\(s1)"
})

// 한 줄
 let stringArrOneLine = intArr.map({ (s1: Int) -> String in return "\(s1)" })

// 타입 값 생략 가능 ((s1: Int) -> String) -> ( (s1) )
let stringArrRemoveType = intArr.map({ (s1) in return "\(s1)" })

// return 생략 가능
let stringArrRemoveReturn = intArr.map({ (s1) in "\(s1)" })

// argument 들을 순서대로 $0, $1로 표현 가능
// 파라미터에 이름 붙일 필요가 없으므로 In 키워드 생략 가능
let stringArrRemoveIn = intArr.map({ "\($0)" })

print(intArr)
print(stringArrRemoveIn)
