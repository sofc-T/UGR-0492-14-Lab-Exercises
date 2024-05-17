fun main(){

}

fun bubbleSort(arr: IntArray) {
    val n = arr.size
    var temp: Int

    for (i in 0 until n - 1) {
        for (j in 0 until n - i - 1) {
            if (arr[j] > arr[j + 1]) {
                // Swap arr[j] and arr[j + 1]
                temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}

fun factorial(num: Int): Int {
    if (num < 0) { 
        println("Invalid Input")
        return -1 // or throw an exception
    }
    if (num <= 1) { 
        return 1
    }
    return num * factorial(num - 1)
}

fun uniqueCharacters(input: String): Boolean {
    val seen = mutableSetOf<Char>()
    for (char in input) {
        if (seen.contains(char)) {
            return false 
        }
        seen.add(char)
    }
    return true 
}