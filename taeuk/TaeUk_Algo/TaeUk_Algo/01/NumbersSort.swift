//
//  NumbersSort.swift
//  TaeUk_Algo
//
//  Created by taeuk on 2021/03/27.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
print(input.sorted().reduce("", {"\($0)\($1) "}))
