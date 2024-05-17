fun main(){}
fun checkTriangle(side1: Double?, side2: Double?, side3: Double?) :String {
    if (side1 == null || side2 == null || side3 == null ) {
        return "Invalid"
    }
    return when {
        side1 == side2 && side2 == side3 -> "Equilateral"
        side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
        else -> "Scalene"
    }

}
    

fun calculateSalary(workedHrs: Double?, rate: Double?, expectedHrs: Double?, overTimeRate: Double?): Double {
    var salary = 0.0;
    if (workedHrs != null && rate != null) {
        salary += workedHrs * rate
        if (expectedHrs != null && workedHrs > expectedHrs && overTimeRate != null) {
            salary += (workedHrs - expectedHrs) * overTimeRate
        }
    }
    return salary
}

