fun main(){}

fun sum(num1: Int, num2: Int): Int{
    var total: Int = 0
    for(num in num1..num2){
        total += num
    }
    return total
}


fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }
    var divisor = 2
    while (divisor * divisor <= number) {
        if (number % divisor == 0) {
            return false
        }
        divisor++
    }
    return true
}


fun findPrimes(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()
    var currentNumber = start
    while (currentNumber <= end) {
        if (isPrime(currentNumber)) {
            primes.add(currentNumber)
        }
        currentNumber++
    }
    return primes
}


fun isPalindrome(number: Int): Boolean {
    var num = number
    var reversedNum = 0
    var originalNum = number

    while (num > 0) {
        val remainder = num % 10
        reversedNum = reversedNum * 10 + remainder
        num /= 10
    }
    return originalNum == reversedNum
}