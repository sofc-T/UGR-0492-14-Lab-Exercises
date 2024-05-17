fun determineSeason(month: Int, day: Int): String {
    return when {
        (month == 3 && day >= 20) || (month in 4..5) || (month == 6 && day <= 20) -> "Spring"
        
        (month == 6 && day >= 21) || (month in 7..8) || (month == 9 && day <= 22) -> "Summer"
        
        (month == 9 && day >= 23) || (month in 10..11) || (month == 12 && day <= 20) -> "Autumn"
        
        (month == 12 && day >= 21) || (month in 1..2) || (month == 3 && day <= 19) -> "Winter"
        
        else -> "Invalid date"
    }
}


fun findLargest(num1: Int, num2: Int, num3: Int): Int {
    return if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }
}

fun main(){
    
}