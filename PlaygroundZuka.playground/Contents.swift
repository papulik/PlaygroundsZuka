import UIKit


//MARK: - Palindrome Task

let palindromeText = "assa"

func isPalindrome(text: String) -> Bool {
    
    if text == String(text.reversed()) {
        return true
    } else {
        return false
    }
}

print(isPalindrome(text: palindromeText))

//MARK: - Coins Task

var coin1 = 1
var coin5 = 5
var coin10 = 10
var coin20 = 20
var coin50 = 50

let cash = 55

func minSplit(amount: Int) -> String {
    
     amount / 1 == 0
        coin1 = amount / 1
    
     amount / 5 == 0
        coin5 = amount / 5
    
     amount / 10 == 0
        coin10 = amount / 10
    
     amount / 20 == 0
        coin20 = amount / 20
    
     amount / 50 == 0
        coin50 = amount / 50
    
    let minCoins = "minNeeded 1 Tetri: \(coin1), minNeeded 5 Tetri: \(coin5), minNeeded 10 Tetri: \(coin10), minNeeded 20 Tetri: \(coin20), minNeeded 50 Tetri: \(coin50)"
    
    
    return minCoins
}

print(minSplit(amount: cash))

//MARK: - Minimal Integer Task

let numbers = [1,3,4,5]

func notContainsNumber(array: [Int]) -> Int {

let setOfIntegers = Set<Int>(numbers)
        var max = 0
        for integer in stride(from: 1, to: numbers.count + 1, by: 1) {
            max = integer > max ? integer : max
            if (!setOfIntegers.contains(integer)) {
                return integer
            }
        }
        
        return  max + 1
}

print(notContainsNumber(array: numbers))

//MARK: - Brackets Task

let str = "())"

func checkBalancedBrackets(string: String) -> Bool {
        
        var stack = [Character]()
        let mapBrackets : [Character: Character] = [")":"("]
        let openingBrackets = "("
        for char in string {
            if openingBrackets.contains(char){
                stack.append(char)
            }
            else {
                if stack.isEmpty {
                    return false
                }
                else if let last = stack.last, last == mapBrackets[char] {
                    stack.popLast()
                }
                else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }

print(checkBalancedBrackets(string: str))

//MARK: - Stairs Task

var stairs = 10
    
        func climbStairs(_ n: Int) -> Int {
            
            var numOfWays = [0,1,2]
            if n < 3 { return numOfWays[n] }
            
            for i in 3...n {
                numOfWays.append(numOfWays[i - 1] + numOfWays[i - 2])
            }
            return numOfWays[n]
        }
    
    print(climbStairs(stairs))

//MARK: - Task 6 ? :(

struct Queue {
    var elements = [1,2,3,4]

}

var queue = Queue()

//queue.elements.last.enqueue(T##_Concurrency.UnownedJob)

