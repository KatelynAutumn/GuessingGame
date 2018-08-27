//
//  main.swift
//  Guessing Game
//
//  Created by Katelyn Pace on 8/16/18.
//  Copyright © 2018 Katelyn Pace. All rights reserved.
//

import Foundation

var playAgain = false

repeat{
var howManyGuesses = 5
let randomNumber = Int(arc4random_uniform(99)) + 1
var guessedNumber: Int? = nil


print("Guess a number between 1-100")
repeat {
repeat {
    let input = readLine()!
    
    
    if input == "I know all your secrets" {
        print("shhh the answer is \(randomNumber)")
    }
    
    if let number = Int(input) {
        guessedNumber = number
    } else {
        print("please enter a number")
        guessedNumber = nil
    }
} while guessedNumber == nil


guard let guessedNumber = guessedNumber else {
    fatalError()
}


if guessedNumber == randomNumber {
        print("you're correct")
    break
    }
if howManyGuesses == 1 {
        print("YOU LOST, the right number is \(randomNumber)!")
        break
    }

if guessedNumber < randomNumber {
    print("incorrect, guess higher")
    howManyGuesses -= 1
}
if guessedNumber > randomNumber {
    print("incorrect, guess lower")
    howManyGuesses -= 1
}
print("you have \(howManyGuesses) left")
   
} while howManyGuesses > 0
    
    print("Would you like to try again? y or n")
    let input = readLine()!
    playAgain = input.lowercased() == "y"

} while playAgain




