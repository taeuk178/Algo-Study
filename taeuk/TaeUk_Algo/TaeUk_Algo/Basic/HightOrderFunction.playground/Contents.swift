import Cocoa

// map



//filter
// 공식 문서
let cast = ["Vivien", "Marlon", "Kim", "Karl"]

let shortFilter = cast.filter { (casted: String) -> Bool in
    return casted.count < 5
}

//return 타입 생략가능
let short2 = cast.filter { (casted) in
    return casted.count < 5
}
// 한줄로 표현, 인자값 $0, $1
let short3 = cast.filter { $0.count < 5 }

print(short3)


let shortNames = cast.filter { $0.count < 5 }.map{ $0.count }
print(shortNames)


//reduce

let numberArr = [1,2,3,4,5]

// 0부터 시작 $0 = 0, $1 = numberArr
let numberArr1 = numberArr.reduce(0) { (s1: Int, s2: Int) -> Int in
    return s1 + s2
}

// type 생략
let numberArr2 = numberArr.reduce(0) { (s1, s2) in return s1 + s2 }

// in, return, 인자 -> $0
let numberArr3 = numberArr.reduce(0) { $0 + $1 }

print(numberArr3)
